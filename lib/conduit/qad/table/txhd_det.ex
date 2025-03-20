defmodule Elixir.Conduit.QAD.Table.Txhd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_txhd_det" do
    field :txhd_tr_nbr, :integer

    field :txhd_ref, :string

    field :txhd_nbr, :string

    field :txhd_line, :integer

    field :txhd_trl, :string

    field :txhd_tr_type, :string

    field :txhd_tax_code, :string

    field :txhd_posted, Conduit.QAD.Types.Bool

    field :txhd_fiscal_class, :string

    field :txhd_edit_hist, Conduit.QAD.Types.Bool

    field :txhd_site, :string

    field :txhd_tax_ctry, :string

    field :txhd_tax_nbr, :string

    field :txhd_effdate, Conduit.QAD.Types.Date

    field :txhd_program, :string

    field :txhd_trans_ref, :string

    field :txhd_vat_sl_in, Conduit.QAD.Types.Bool

    field :txhd_td_stat_in, Conduit.QAD.Types.Bool

    field :txhd_enter_date, Conduit.QAD.Types.Date

    field :txhd_user_id, :string

    field :txhd_chg_date, Conduit.QAD.Types.Date

    field :txhd_usr_id_chg, :string

    field :txhd_vat_sl_date, Conduit.QAD.Types.Date

    field :txhd_stat_submit, Conduit.QAD.Types.Date

    field :txhd_db_export, Conduit.QAD.Types.Date

    field :txhd_cust_num, :string

    field :txhd_cust_ctry, :string

    field :txhd_vat_value, :decimal

    field :txhd_proc_ind, Conduit.QAD.Types.Bool

    field :txhd_flow_in, Conduit.QAD.Types.Bool

    field :txhd_comm_code, :string

    field :txhd_del_terms, :string

    field :txhd_tax_usage, :string

    field :txhd_desdis_ctry, :string

    field :txhd_tran_mode, :string

    field :txhd_orig_ctry, :string

    field :txhd_desdis_port, :string

    field :txhd_transh_port, :string

    field :txhd_stat_proc, :string

    field :txhd_container, :string

    field :txhd_taric, :string

    field :txhd_inv_value, :decimal

    field :txhd_stat_value, :decimal

    field :txhd_net_wt, :integer

    field :txhd_suppl_unit, :integer

    field :txhd_curr, :string

    field :txhd_user1, :string

    field :txhd_user2, :string

    field :txhd__chr01, :string

    field :txhd__chr02, :string

    field :txhd__dec01, :decimal

    field :txhd__dec02, :decimal

    field :txhd__dte01, Conduit.QAD.Types.Date

    field :txhd__log01, Conduit.QAD.Types.Bool

    field :txhd__qad01, :string

    field :txhd__qad02, :string

    field :txhd__qad03, Conduit.QAD.Types.Bool

    field :txhd__qad04, :decimal

    field :txhd__qad05, :decimal

    field :txhd__qad06, Conduit.QAD.Types.Date

    field :txhd_domain, :string

    field :oid_txhd_det, :decimal, primary_key: true

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
