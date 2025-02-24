defmodule Conduit.Sage.Query do
  alias Conduit.Sage.XML, as: X
  alias Conduit.Sage.Request, as: SR

  @query_from_select_list_opts NimbleOptions.new!(
                                 start_date: [
                                   type: {:struct, Date},
                                   doc: "the earliest created date to return"
                                 ],
                                 end_date: [
                                   type: {:struct, Date},
                                   doc: "the latest date to return"
                                 ],
                                 created_field_name: [
                                   type: :string,
                                   doc:
                                     "the field in the object that determines when the object was created",
                                   default: "WHENCREATED"
                                 ],
                                 order_by: [
                                   type: :non_empty_keyword_list,
                                   keys: [
                                     field_name: [
                                       type: :string,
                                       required: true
                                     ],
                                     order: [
                                       type: {:in, [:asc, :desc]},
                                       default: :desc
                                     ]
                                   ],
                                   doc:
                                     "the field that will be used to order results, by default results are not orderd"
                                 ]
                               )
  @doc """
  Creates a query XML from query information. This 
  function will raise if given a struct and an invlaid
  select list.

  ## Arguments

  * table_name: must be a string identifying a table or a queryable struct.
  * select: A list of atoms or strings identifying what is to be selected.  If 
    table_name is set to a struct then :all may be passed.
  * page_size: The number of records to be returned per request.
  * offset: The offset from the start of records to start reading from. 
  """
  @spec query_from_select_list!(
          table :: String.t() | Conduit.Sage.Object.Queryable.t(),
          select :: atom() | list(String.t()) | list(atom()),
          page_size :: non_neg_integer(),
          offset :: non_neg_integer()
        ) :: X.t()
  def query_from_select_list!(table_naem, select_list, page_szie, offset, opts \\ [])

  def query_from_select_list!(table_name, select_list, page_size, offset, opts)
      when is_binary(table_name) and is_list(select_list) do
    opts = NimbleOptions.validate!(opts, @query_from_select_list_opts)

    query_body(
      table_name,
      select_list_to_tags(select_list),
      page_size,
      offset
    )
    |> then(fn query ->
      if opts[:start_date] && opts[:end_date] do
        insert_filter(
          query,
          created_between_dates_filter(
            opts[:start_date],
            opts[:end_date],
            opts[:created_field_name]
          )
        )
      else
        query
      end
    end)
    |> then(fn query ->
      if opts[:order_by] do
        insert_order_by(
          query,
          create_order_by(opts[:order_by][:field_name], opts[:order_by][:order])
        )
      else
        query
      end
    end)
  end

  def query_from_select_list!(table_struct, select_list, page_size, offset, opts)
      when is_struct(table_struct) do
    query_from_select_list!(
      Conduit.Sage.Object.Queryable.table_name(table_struct),
      select_list_to_tags(select_list, table_struct),
      page_size,
      offset,
      opts
    )
  end

  def add_date_filter(query, start_date, end_date, target_field) do
    insert_filter(query, created_between_dates_filter(start_date, end_date, target_field))
  end

  def add_order_by(query, field_name, order) when order == :asc or order == :desc do
    insert_order_by(query, create_order_by(field_name, order))
  end

  @spec query_body(
          table :: Conduit.Sage.Object.Queryable.t() | String.t(),
          select_list :: list(X.t()),
          page_size :: non_neg_integer() | String.t(),
          offset :: non_neg_integer() | String.t()
        ) :: X.t()
  defp query_body(table, select_list, page_size, offset) when is_integer(page_size) do
    query_body(table, select_list, Integer.to_string(page_size), offset)
  end

  defp query_body(table, select_list, page_size, offset) when is_integer(offset) do
    query_body(table, select_list, page_size, Integer.to_string(offset))
  end

  defp query_body(table, [%X{} | _] = select_list, page_size, offset)
       when is_binary(table) and is_binary(page_size) and is_binary(offset) do
    SR.function(
      X.tag(
        name: "query",
        value: [
          X.tag(name: "object", value: table),
          X.tag(name: "select", value: select_list),
          X.tag(name: "pagesize", value: page_size),
          X.tag(name: "offset", value: offset)
        ]
      )
    )
  end

  defp insert_order_by(query_struct, order_by_struct) do
    # order by should not be first
    Map.update!(query_struct, :value, &(&1 ++ [order_by_struct]))
  end

  # <orderby>
  #     <order>
  #         <field>TOTALDUE</field>
  #         <descending />
  #     </order>
  # </orderby>
  defp create_order_by(field_name, order_by) do
    order_by_tag =
      case order_by do
        :asc ->
          X.tag(name: "ascending")

        :desc ->
          X.tag(name: "descending")

        _ ->
          raise ArgumentError,
                "order by must be either :asc or :desc, but received: #{inspect(order_by)}"
      end

    X.tag(
      name: "orderby",
      value:
        X.tag(
          name: "order",
          value: [
            X.tag(name: "field", value: field_name),
            order_by_tag
          ]
        )
    )
  end

  defp insert_filter(query_struct, filter_struct) do
    # filter should not be first
    Map.update!(query_struct, :value, &(&1 ++ [filter_struct]))
  end

  @spec created_between_dates_filter(
          start_date :: Date.t(),
          end_date :: Date.t(),
          created_field :: String.t()
        ) :: X.t()
  defp created_between_dates_filter(
         %Date{} = start_date,
         %Date{} = end_date,
         created_field \\ "WHENCREATED"
       ) do
    X.tag(
      name: "filter",
      value: [
        X.tag(
          name: "and",
          value: [
            X.tag(
              name: "greaterthanorequalto",
              value: [
                X.tag(
                  name: "field",
                  value: created_field
                ),
                X.tag(name: "value", value: to_sage_date(start_date))
              ]
            ),
            X.tag(
              name: "lessthanorequalto",
              value: [
                X.tag(
                  name: "field",
                  value: created_field
                ),
                X.tag(name: "value", value: to_sage_date(end_date))
              ]
            )
          ]
        )
      ]
    )
  end

  defp to_sage_date(%Date{} = ndt) do
    [month, day] =
      [ndt.month, ndt.day]
      |> Enum.map(&to_string/1)
      |> Enum.map(&String.pad_leading(&1, 2, "0"))

    "#{month}/#{day}/#{ndt.year}"
  end

  @spec select_list_to_tags(
          atom() | list(atom()) | list(String.t()),
          table_struct :: Conduit.Sage.Object.Queryable.t()
        ) ::
          select_list :: list(X.t())
  defp select_list_to_tags(:all, table_struct) when is_struct(table_struct) do
    select_list_to_tags(Conduit.Sage.Object.Queryable.field_list(table_struct))
  end

  defp select_list_to_tags([f | _] = list, table_struct) when is_atom(f) do
    select_list_to_tags(Enum.map(list, &Atom.to_string/1), table_struct)
  end

  defp select_list_to_tags([f | _] = list, table_struct) when is_binary(f) do
    raise_if_invalid_select!(table_struct, list)
    select_list_to_tags(list)
  end

  @spec select_list_to_tags(field_list :: list(atom()) | list(String.t())) :: select_list :: X.t()
  # if called with a list of tags, do nothing
  defp select_list_to_tags([%X{} | _] = list) do
    list
  end

  # if called with atoms convert to strings and call again
  defp select_list_to_tags([f | _] = list) when is_atom(f) do
    select_list_to_tags(Enum.map(list, &Atom.to_string/1))
  end

  # if called with strings conver to list of tags
  defp select_list_to_tags([f | _] = select_list) when is_binary(f) do
    for field <- select_list, do: X.tag(name: "field", value: field)
  end

  defp raise_if_invalid_select!(object, string_entries) do
    if Conduit.Sage.Object.Queryable.valid_select?(object, string_entries) do
      :ok
    else
      raise ArgumentError, "select contains invalid fields"
    end
  end
end
