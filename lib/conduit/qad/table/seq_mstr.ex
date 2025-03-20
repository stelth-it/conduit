defmodule Elixir.Conduit.QAD.Table.Seq_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_seq_mstr" do
    field :seq_line, :string

    field :seq_site, :string

    field :seq_part, :string

    field :seq_due_date, Conduit.QAD.Types.Date

    field :seq_qty_req, :decimal

    field :seq_start, Conduit.QAD.Types.Date

    field :seq_release, Conduit.QAD.Types.Date

    field :seq_priority, :decimal

    field :seq_mode, Conduit.QAD.Types.Bool

    field :seq_mode_qty, :decimal

    field :seq_type, Conduit.QAD.Types.Bool

    field :seq_shift1, :integer

    field :seq_shift2, :decimal

    field :seq_shift3, :decimal

    field :seq_shift4, :decimal

    field :seq_user1, :string

    field :seq_user2, :string

    field :seq__chr01, :string

    field :seq__chr02, :string

    field :seq__chr03, :string

    field :seq__chr04, :string

    field :seq__chr05, :string

    field :seq__dec01, :decimal

    field :seq__dec02, :decimal

    field :seq__dec03, :decimal

    field :seq__log01, Conduit.QAD.Types.Bool

    field :seq_domain, :string

    field :oid_seq_mstr, :decimal, primary_key: true

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
