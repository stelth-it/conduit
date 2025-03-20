defmodule Elixir.Conduit.QAD.Table.Schd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_schd_det" do
    field :schd_type, :integer

    field :schd_nbr, :string

    field :schd_line, :integer

    field :schd_rlse_id, :string

    field :schd_date, Conduit.QAD.Types.Date

    field :schd_time, :string

    field :schd_discr_qty, :decimal

    field :schd_fc_qual, :string

    field :schd_interval, :string

    field :schd_cum_qty, :decimal

    field :schd_cmtindx, :integer

    field :schd__chr01, :string

    field :schd__chr02, :string

    field :schd__chr03, :string

    field :schd__chr04, :string

    field :schd__chr05, :string

    field :schd__chr06, :string

    field :schd__chr07, :string

    field :schd__chr08, :string

    field :schd__chr09, :string

    field :schd__chr10, :string

    field :schd__dec01, :decimal

    field :schd__dec02, :decimal

    field :schd__dec03, :decimal

    field :schd__dec04, :decimal

    field :schd__dec05, :decimal

    field :schd__dec06, :decimal

    field :schd__dec07, :decimal

    field :schd__dec08, :decimal

    field :schd__dec09, :decimal

    field :schd__dec10, :decimal

    field :schd__dte01, Conduit.QAD.Types.Date

    field :schd__dte02, Conduit.QAD.Types.Date

    field :schd__log01, Conduit.QAD.Types.Bool

    field :schd__log02, Conduit.QAD.Types.Bool

    field :schd_upd_qty, :decimal

    field :schd_user1, :string

    field :schd_user2, :string

    field :schd_ship_qty, :decimal

    field :schd_reference, :string

    field :schd_all_qty, :decimal

    field :schd_per_date, Conduit.QAD.Types.Date

    field :schd_reference_type, :string

    field :schd_domain, :string

    field :oid_schd_det, :decimal, primary_key: true

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
