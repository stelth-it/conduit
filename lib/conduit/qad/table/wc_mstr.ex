defmodule Elixir.Conduit.QAD.Table.Wc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_wc_mstr" do
    field :wc_wkctr, :string

    field :wc_desc, :string

    field :wc_dept, :string

    field :wc__qad01, :decimal

    field :wc_mch_wkctr, :decimal

    field :wc_mch_op, :integer

    field :wc_men_mch, :decimal

    field :wc_lbr_rate, :decimal

    field :wc_bdn_rate, :decimal

    field :wc_bdn_pct, :decimal

    field :wc_mch_bdn, :decimal

    field :wc_queue, :decimal

    field :wc_wait, :decimal

    field :wc_wk_loc, :string

    field :wc_mch, :string

    field :wc_pct_util, :decimal

    field :wc_pct_eff, :decimal

    field :wc__qad02, :decimal

    field :wc_user1, :string

    field :wc_user2, :string

    field :wc_setup_men, :decimal

    field :wc_setup_rte, :decimal

    field :wc_mod_date, Conduit.QAD.Types.Date

    field :wc_userid, :string

    field :wc_bdn_surate, :decimal

    field :wc_bdn_supct, :decimal

    field :wc_mch_subdn, :decimal

    field :wc_fsm_type, :string

    field :wc__qadc01, :string

    field :wc__qadc02, :string

    field :wc__qadc03, :string

    field :wc__qade01, :decimal

    field :wc__qade02, :decimal

    field :wc__qadl01, Conduit.QAD.Types.Bool

    field :wc__chr01, :string

    field :wc__chr02, :string

    field :wc__chr03, :string

    field :wc__dec01, :decimal

    field :wc__dec02, :decimal

    field :wc__log01, Conduit.QAD.Types.Bool

    field :wc_domain, :string

    field :oid_wc_mstr, :decimal, primary_key: true

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
