defmodule Conduit.Quickbooks.Object.Scraper do
  @moduledoc """
  Functions used to scrape object descriptions 
  from the Quickboos developer documentation.

  We are using Wallaby to pilot chrome to pull 
  the data.
  """
  alias Conduit.Quickbooks.Object
  alias Conduit.Quickbooks.Object.Field

  def base_url,
    do: "https://developer.intuit.com/app/developer/qbo/docs/api/accounting/all-entities/"

  @doc """
  Given a wallaby session pulls all of the object names from the 
  QB API documentation.
  """
  @spec pull_table_names(session :: Wallaby.Session.t()) ::
          {names :: list(String.t()), session :: Wallaby.Session.t()}
  def pull_table_names(wallaby_session) do
    wallaby_session
    |> Wallaby.Browser.visit(Path.join(base_url(), "account"))
    |> wait_for_load("#account")
    |> expand_compound_fields()
    |> then(fn s -> {Wallaby.Browser.page_source(s), s} end)
    |> then(fn {p, s} -> {EasyHTML.parse!(p) |> extract_name_text(), s} end)
  end

  @doc """
  Given a wallaby session and the name of a table will pull
  use the HTML data returned to create a quickbooks object.
  """
  @spec get_object(Wallaby.Session.t(), String.t()) ::
          {Object.t(), Wallaby.Session.t()}
  def get_object(wallaby_session, table_name) do
    wallaby_session
    |> Wallaby.Browser.visit(Path.join(base_url(), table_name))
    |> wait_for_load("##{table_name}")
    |> then(fn s -> {Wallaby.Browser.page_source(s), s} end)
    |> then(fn {p, s} -> {EasyHTML.parse!(p) |> extract_object(table_name), s} end)
  end

  defp wait_for_load(wallaby_session, css_selection_string) do
    Wallaby.Browser.find(wallaby_session, Wallaby.Query.css(css_selection_string))
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

  defp expand_compound_fields(wallaby_session) do
    wallaby_session
    |> Wallaby.Browser.find(
      Wallaby.Query.css("div.attribute-child-attributes-toggle", count: :any)
    )
    |> Enum.each(&Wallaby.Element.click(&1))

    wallaby_session
  end

  defp extract_object(easy_html, object_name) do
    fields =
      easy_html
      |> field_entries()
      |> Enum.flat_map(&extract_field/1)

    Object.from_scrape(object_name, fields)
  end

  defp field_entries(easy_html) do
    easy_html["ul.attributes-list-group"]["li.attribute-list-item"]
    |> Enum.to_list()
    |> Enum.uniq_by(fn node ->
      node["span.attribute-name"].nodes |> Floki.text()
    end)
  end

  defp field_name_span(easy_html_field_description) do
    easy_html_field_description["span.attribute-name"].nodes
  end

  defp field_name(easy_html_field_description) do
    easy_html_field_description
    |> field_name_span()
    |> Floki.text()
  end

  defp internal_field_name(easy_html_field_description) do
    easy_html_field_description
    |> field_name()
    |> Macro.underscore()
  end

  defp metadata(ehtml) do
    if metadata_entries = ehtml["div.attribute-metadata"]["span"] do
      metadata_entries
      |> Enum.map(fn %{nodes: nodes} -> Floki.text(nodes) |> String.trim() end)
    else
      []
    end
  end

  defp extract_field(easy_html_field_description) do
    type_label = type_label(easy_html_field_description)
    field_name = field_name(easy_html_field_description)
    internal_field_name = internal_field_name(easy_html_field_description)
    metadata = metadata(easy_html_field_description)

    Field.from_scrape(
      type_label,
      field_name,
      metadata: metadata
    )
  end

  defp type_label(ehtml) do
    ehtml["span.attribute-type"].nodes
    |> Floki.text()
    |> String.downcase()
    |> String.trim()
  end
end
