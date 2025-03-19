defmodule Conduit.QAD.QadImportActions do
  alias Conduit.QAD.QadImportActions.QadImportAction
  alias Conduit.Repo
  import Ecto.Query

  def new_with_associations(data_source, status, qad_import, qad_table) do
    %QadImportAction{}
    |> QadImportAction.cast_with_relations(qad_import, qad_table, %{
      data_source: data_source,
      status: status
    })
    |> Repo.insert()
  end

  def get_failures_in_import(import_id) do
    q =
      from ia in QadImportAction,
        where: ia.qad_import_id == ^import_id,
        where: like(ia.status, "failure%"),
        distinct: ia.qad_table_name

    Repo.all(q)
  end
end
