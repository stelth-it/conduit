defmodule Conduit.QAD.QadImports.QadImport do
  use Ecto.Schema
  import Ecto.Changeset
  alias Conduit.QAD.{QadImportActions.QadImportAction}

  @moduledoc """
  Represents a total QAD import.
  """

  schema("qad_imports") do
    field :import_type, :string
    has_many(:qad_import_actions, QadImportAction)
    timestamps()
  end

  def changeset(struct = %__MODULE__{}, params) do
    struct
    |> cast(params, [:import_type])
  end
end
