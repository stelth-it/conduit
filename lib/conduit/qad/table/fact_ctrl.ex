defmodule Elixir.Conduit.QAD.Table.Fact_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fact_ctrl" do
    field :fact_auto, Conduit.QAD.Types.Bool

    field :fact_gl_sum, Conduit.QAD.Types.Bool

    field :fact_index1, :integer

    field :fact_seq_id, :string

    field :fact__qadc03, :string

    field :fact__qadc05, :string

    field :fact__qadc04, :string

    field :fact_mod_userid, :string

    field :fact_mod_date, Conduit.QAD.Types.Date

    field :fact_user1, :string

    field :fact_user2, :string

    field :fact__chr01, :string

    field :fact__dec01, :decimal

    field :fact__log01, Conduit.QAD.Types.Bool

    field :fact__dte01, Conduit.QAD.Types.Date

    field :fact__int01, :integer

    field :fact__qadc01, :string

    field :fact__qadd01, :decimal

    field :fact__qadl01, Conduit.QAD.Types.Bool

    field :fact__qadi01, :integer

    field :fact__qadt01, Conduit.QAD.Types.Date

    field :fact__qadc02, :string

    field :fact_domain, :string

    field :oid_fact_ctrl, :decimal, primary_key: true

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
