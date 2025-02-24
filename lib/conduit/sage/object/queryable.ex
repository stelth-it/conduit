defprotocol Conduit.Sage.Object.Queryable do
  def description(t)
  def field_list(t, atom)
  def field_list(t)
  def table_name(t)
  def valid_select?(t, list)
  def struct_from_api(t, params)
end
