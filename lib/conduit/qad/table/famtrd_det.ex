defmodule Elixir.Conduit.QAD.Table.Famtrd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_famtrd_det" do
    field :famtrd_famtr_id, :string

    field :famtrd_seq, :integer

    field :famtrd_action, :string

    field :famtrd_date, Conduit.QAD.Types.Date

    field :famtrd_reading, :integer

    field :famtrd_accum, :integer

    field :famtrd_usage, :integer

    field :famtrd_mod_userid, :string

    field :famtrd_mod_date, Conduit.QAD.Types.Date

    field :famtrd_user1, :string

    field :famtrd_user2, :string

    field :famtrd__chr01, :string

    field :famtrd__dec01, :decimal

    field :famtrd__log01, Conduit.QAD.Types.Bool

    field :famtrd__dte01, Conduit.QAD.Types.Date

    field :famtrd__int01, :integer

    field :famtrd__qadc01, :string

    field :famtrd__qadd01, :decimal

    field :famtrd__qadl01, Conduit.QAD.Types.Bool

    field :famtrd__qadi01, :integer

    field :famtrd__qadt01, Conduit.QAD.Types.Date

    field :famtrd_domain, :string

    field :oid_famtrd_det, :decimal, primary_key: true

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
