defmodule Elixir.Conduit.QAD.Table.Swc_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_swc_det" do
    field :swc_sim, :string

    field :swc_wkctr, :string

    field :swc_mch, :string

    field :swc_element, :string

    field :swc_set_rate, :decimal

    field :swc_run_rate, :decimal

    field :swc_cat, :string

    field :swc_user1, :string

    field :swc_user2, :string

    field :swc_bdn_pct, :decimal

    field :swc_mch_wkctr, :decimal

    field :swc_mch_op, :integer

    field :swc_men_mch, :decimal

    field :swc_lbr_rate, :decimal

    field :swc_bdn_rate, :decimal

    field :swc_mch_bdn, :decimal

    field :swc_pct_util, :decimal

    field :swc_pct_eff, :decimal

    field :swc_setup_men, :decimal

    field :swc_setup_rte, :decimal

    field :swc_bdn_surate, :decimal

    field :swc_bdn_supct, :decimal

    field :swc_mch_subdn, :decimal

    field :swc_mod_date, Conduit.QAD.Types.Date

    field :swc_userid, :string

    field :swc__qadc01, :string

    field :swc_domain, :string

    field :oid_swc_det, :decimal, primary_key: true

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
