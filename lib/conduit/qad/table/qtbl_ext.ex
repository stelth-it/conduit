defmodule Elixir.Conduit.QAD.Table.Qtbl_ext do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qtbl_ext" do
    field :qtbl_owner, :string

    field :qtbl_table, :string

    field :qtbl_reference, :string

    field :qtbl_key1, :string

    field :qtbl_key2, :string

    field :qtbl_key3, :string

    field :qtbl_key4, :string

    field :qtbl_key5, :string

    field :qtbl_key6, :string

    field :qtbl_qadc01, :string

    field :qtbl_qadc02, :string

    field :qtbl_qadc03, :string

    field :qtbl_qadc04, :string

    field :qtbl_qadc05, :string

    field :qtbl_qadd01, :decimal

    field :qtbl_qadd02, :decimal

    field :qtbl_qadd03, :decimal

    field :qtbl_qadd04, :decimal

    field :qtbl_qadd05, :decimal

    field :qtbl_qadl01, Conduit.QAD.Types.Bool

    field :qtbl_qadl02, Conduit.QAD.Types.Bool

    field :qtbl_qadt01, Conduit.QAD.Types.Date

    field :qtbl_qadt02, Conduit.QAD.Types.Date

    field :oid_qtbl_ext, :decimal, primary_key: true

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields), empty_values: ["?", empty_values()])
  end
end
