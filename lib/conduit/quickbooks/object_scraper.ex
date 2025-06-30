defmodule Conduit.Quickbooks.AccountingObjectScraper do
  @moduledoc """
  Functions used to scrape object descriptions 
  from the Quickboos developer documentation.

  We are using Wallaby to pilot chrome to pull 
  the data.
  """
  alias Conduit.Quickbooks.FieldTranslations

  def base_url,
    do: "https://developer.intuit.com/app/developer/qbo/docs/api/accounting/all-entities/"

  @doc """
  Given a wallaby session will simply wait for 
  the given element to be loaded, will wait for
  a maximum of three seconds
  """
  def wait_for_load(wallaby_session, css_selection_string) do
    Wallaby.Browser.find(wallaby_session, Wallaby.Query.css(css_selection_string))
    wallaby_session
  end

  def pull_table_names(wallaby_session) do
    wallaby_session
    |> Wallaby.Browser.visit(Path.join(base_url(), "account"))
    |> wait_for_load("#account")
    |> expand_compound_fields()
    |> then(fn s -> {Wallaby.Browser.page_source(s), s} end)
    |> then(fn {p, s} -> {EasyHTML.parse!(p) |> extract_name_text(), s} end)
  end

  defp expand_compound_fields(wallaby_session) do
    wallaby_session
    |> Wallaby.Browser.find(
      Wallaby.Query.css("div.attribute-child-attributes-toggle", count: :any)
    )
    |> Enum.each(&Wallaby.Element.click(&1))

    wallaby_session
  end

  defp extract_name_text(easy_html) do
    easy_html["div.text-left-nav-l2"]
    |> Enum.to_list()
    |> Enum.map(fn %{nodes: node} ->
      Floki.text(node)
      |> String.downcase()
    end)
  end

  def get_table_fields(wallaby_session, table_name) do
    wallaby_session
    |> Wallaby.Browser.visit(Path.join(base_url(), table_name))
    |> wait_for_load("##{table_name}")
    |> then(fn s -> {Wallaby.Browser.page_source(s), s} end)
    |> then(fn {p, s} -> {EasyHTML.parse!(p) |> extract_table_fields(), s} end)
  end

  defp extract_table_fields(easy_html) do
    transforms = [
      &extract_field_name/1,
      &extract_field_metadata/1,
      &extract_field_type/1
    ]

    easy_html
    |> field_entries()
    |> Enum.map(fn entry ->
      for t <- transforms, into: %{} do
        t.(entry)
      end
    end)
  end

  defp field_entries(easy_html) do
    easy_html["ul.attributes-list-group"]["li.attribute-list-item"]
    |> Enum.to_list()
    |> Enum.uniq_by(fn node ->
      node["span.attribute-name"].nodes |> Floki.text()
    end)
  end

  defp extract_field_name(easy_html_field_description) do
    {:field_name,
     field_name_span(easy_html_field_description) |> Floki.text() |> String.downcase()}
  end

  defp field_name_span(easy_html_field_description) do
    easy_html_field_description["span.attribute-name"].nodes
  end

  defp extract_field_metadata(easy_html_field_description) do
    {:meta_data,
     if metadata_entries = easy_html_field_description["div.attribute-metadata"]["span"] do
       metadata_entries
       |> Enum.map(fn %{nodes: nodes} -> Floki.text(nodes) |> String.trim() end)
     else
       []
     end}
  end

  defp extract_field_type(easy_html_field_description) do
    type_label =
      easy_html_field_description["span.attribute-type"].nodes
      |> Floki.text()
      |> String.downcase()
      |> String.trim()

    cond do
      String.contains?(type_label, "ref") ->
        {:type, type_description({:ref, type_label}, easy_html_field_description)}

      true ->
        {:type, type_description(type_label, easy_html_field_description)}
    end
  end

  defp type_description("string", easy_html_field_description) do
    key = description_to_key(easy_html_field_description)

    label = description_to_label(easy_html_field_description)

    FieldTranslations.string(label, key)
  end

  defp type_description({:ref, label}, easy_html_field_description) do
  end

  defp type_description(_, _), do: :unknown

  defp description_to_key(easy_html_field_description),
    do: easy_html_field_description |> field_name_span() |> Floki.text() |> String.trim()

  defp description_to_label(easy_html_field_description),
    do:
      easy_html_field_description
      |> description_to_key()
      |> String.downcase()
      |> String.to_atom()
end
