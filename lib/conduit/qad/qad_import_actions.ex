defmodule Conduit.QAD.QadImportActions do
  alias Conduit.QAD.QadImportActions.QadImportAction
  alias Conduit.Repo

  def new_with_associations(data_source, status, qad_import, qad_table) do
    %QadImportAction{}
    |> QadImportAction.cast_with_relations(qad_import, qad_table, %{
      data_source: data_source,
      status: status
    })
    |> Repo.insert()
  end
end
