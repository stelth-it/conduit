defmodule Elixir.Conduit.QAD.Table.Iec_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_iec_ctrl" do
    field :iec_authority, :string

    field :iec_agent, :string

    field :iec_agent_id, :string

    field :iec_com_code, :string

    field :iec_declarant, :string

    field :iec_declarant_id, :string

    field :iec_flow_arr, :string

    field :iec_flow_disp, :string

    field :iec_incl_memo, Conduit.QAD.Types.Bool

    field :iec_int_com_code, :string

    field :iec_mode_transp, :string

    field :iec_nat_trans, :string

    field :iec_net_wt_min, :decimal

    field :iec_net_wt_um, :string

    field :iec_port_arrdisp, :string

    field :iec_port_transh, :string

    field :iec_ref_logic, :string

    field :iec_stat_proc, :string

    field :iec_terms_deliv, :string

    field :iec_use_instat, Conduit.QAD.Types.Bool

    field :iec__qadi02, :integer

    field :iec_userid, :string

    field :iec_mod_date, Conduit.QAD.Types.Date

    field :iec__qadi01, :integer

    field :iec_region, :string

    field :iec_declaration_id, :integer

    field :iec__chr01, :string

    field :iec__chr02, :string

    field :iec__chr03, :string

    field :iec__chr04, :string

    field :iec__dec01, :decimal

    field :iec__log01, Conduit.QAD.Types.Bool

    field :iec__log02, Conduit.QAD.Types.Bool

    field :iec__qadc01, :string

    field :iec__qadc02, :string

    field :iec__qadc03, :string

    field :iec__qadc04, :string

    field :iec__qadd01, :decimal

    field :iec__qadl01, Conduit.QAD.Types.Bool

    field :iec__qadl02, Conduit.QAD.Types.Bool

    field :iec_impexp, Conduit.QAD.Types.Bool

    field :iec_user1, :string

    field :iec_user2, :string

    field :iec_act_in_type_list, :string

    field :iec_act_ex_type_list, :string

    field :iec_corr_flow_arr, :string

    field :iec_corr_flow_disp, :string

    field :iec_use_extrastat, Conduit.QAD.Types.Bool

    field :iec_container, Conduit.QAD.Types.Bool

    field :iec_preference, :integer

    field :iec_domain, :string

    field :oid_iec_ctrl, :decimal, primary_key: true

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
