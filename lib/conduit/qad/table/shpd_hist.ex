defmodule Elixir.Conduit.QAD.Table.Shpd_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_shpd_hist" do
    field :shpd_tran_id, :integer

    field :shpd_measurement_type, :integer

    field :shpd_status_code, :string

    field :shpd_rsn_code, :string

    field :shpd_acceptable, Conduit.QAD.Types.Bool

    field :shpd_rsn_type, :string

    field :shpd_meas_subtype, :integer

    field :shpd__qadc01, :string

    field :shpd__qadc02, :string

    field :shpd_mod_userid, :string

    field :shpd_mod_date, Conduit.QAD.Types.Date

    field :shpd_user1, :string

    field :shpd_user2, :string

    field :shpd_domain, :string

    field :oid_shpd_hist, :decimal, primary_key: true

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
