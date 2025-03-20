defmodule Elixir.Conduit.QAD.Table.Famtd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_famtd_det" do
    field :famtd_famt_id, :string

    field :famtd_year, :integer

    field :famtd_period, :integer

    field :famtd_percent, :decimal

    field :famtd_mod_userid, :string

    field :famtd_mod_date, Conduit.QAD.Types.Date

    field :famtd_user1, :string

    field :famtd_user2, :string

    field :famtd__chr01, :string

    field :famtd__dec01, :decimal

    field :famtd__log01, Conduit.QAD.Types.Bool

    field :famtd__dte01, Conduit.QAD.Types.Date

    field :famtd_int01, :integer

    field :famtd__qadc01, :string

    field :famtd__qadd01, :decimal

    field :famtd__qadl01, Conduit.QAD.Types.Bool

    field :famtd__qadi01, :integer

    field :famtd__qadt01, Conduit.QAD.Types.Date

    field :famtd_domain, :string

    field :oid_famtd_det, :decimal, primary_key: true

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
