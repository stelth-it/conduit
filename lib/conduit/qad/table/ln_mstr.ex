defmodule Elixir.Conduit.QAD.Table.Ln_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ln_mstr" do
    field :ln_line, :string

    field :ln_site, :string

    field :ln_desc, :string

    field :ln_user1, :string

    field :ln_user2, :string

    field :ln_rate, :decimal

    field :ln_rate_base, Conduit.QAD.Types.Bool

    field :ln_shift1, :decimal

    field :ln_shift2, :decimal

    field :ln_shift3, :decimal

    field :ln__chr01, :string

    field :ln__chr03, :string

    field :ln__chr04, :string

    field :ln__chr05, :string

    field :ln__dec01, :decimal

    field :ln__dec02, :decimal

    field :ln__dec03, :decimal

    field :ln__log01, Conduit.QAD.Types.Bool

    field :ln_shift4, :decimal

    field :ln_schedule_code, :string

    field :ln_rate_code, :string

    field :ln_freeze_period, :integer

    field :ln_kanban_receipts, Conduit.QAD.Types.Bool

    field :ln_domain, :string

    field :oid_ln_mstr, :decimal, primary_key: true

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
