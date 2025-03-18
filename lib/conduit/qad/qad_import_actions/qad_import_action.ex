defmodule Conduit.QAD.QadImportActions.QadImportAction do
  alias Conduit.QAD.QadImports.QadImport
  alias Conduit.QAD.QadTables.QadTable
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema("qad_import_actions") do
    field :data_source, :string
    field :status, :string
    belongs_to :qad_import, QadImport

    belongs_to :qad_table, QadTable,
      foreign_key: :qad_table_name,
      references: :table_name,
      type: :string

    timestamps()
  end

  def cast(struct = %__MODULE__{}, params) do
    struct
    |> cast(params, [:data_source, :status, :qad_import_id, :qad_table_name])
  end

  def cast_with_relations(
        struct = %__MODULE__{},
        _qad_import = %QadImport{id: import_id},
        _qad_table = %QadTable{table_name: table_name},
        params
      ) do
    struct
    |> Map.put(:qad_import_id, import_id)
    |> Map.put(:qad_table_name, table_name)
    |> cast(params)
  end
end
