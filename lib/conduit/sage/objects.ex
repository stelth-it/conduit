defmodule Conduit.Sage.Objects do
  alias Conduit.Sage.Object.Object
  import Ecto.Query

  def get_by_name_and_endpoint(endpoint_id, object_name)
      when is_integer(endpoint_id) and is_binary(object_name) do
    q =
      from(o in Object,
        where: o.endpoint_id == ^endpoint_id,
        where: ilike(o.name, ^object_name)
      )

    Conduit.Repo.one!(q)
  end

  def get_by_name_prefix(endpoint_id, object_prefix)
      when is_integer(endpoint_id) and is_binary(object_prefix) do
    q =
      from(o in Object,
        where: o.endpoint_id == ^endpoint_id,
        where: ilike(o.name, ^"#{object_prefix}%")
      )

    Conduit.Repo.all(q)
  end
end
