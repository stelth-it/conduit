defmodule Elixir.Conduit.QAD.Table.Lgs_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lgs_mstr" do
    field :lgs_app_id, :string

    field :lgs_act, Conduit.QAD.Types.Bool

    field :lgs_ship_exp, Conduit.QAD.Types.Bool

    field :lgs_pt_cst_exp, Conduit.QAD.Types.Bool

    field :lgs_inv_exp, Conduit.QAD.Types.Bool

    field :lgs_lad_exp, Conduit.QAD.Types.Bool

    field :lgs_pick_exp, Conduit.QAD.Types.Bool

    field :lgs_pymt_exp, Conduit.QAD.Types.Bool

    field :lgs_ar_bal_exp, Conduit.QAD.Types.Bool

    field :lgs_so_imp, Conduit.QAD.Types.Bool

    field :lgs_invc_exp, Conduit.QAD.Types.Bool

    field :lgs_ar_imp, Conduit.QAD.Types.Bool

    field :lgs_pt_mnt, Conduit.QAD.Types.Bool

    field :lgs_cm_mnt, Conduit.QAD.Types.Bool

    field :lgs_so_mnt, Conduit.QAD.Types.Bool

    field :lgs_lad_mnt, Conduit.QAD.Types.Bool

    field :lgs_invc_imp, Conduit.QAD.Types.Bool

    field :lgs_mod_date, Conduit.QAD.Types.Date

    field :lgs_mod_userid, :string

    field :lgs_user1, :string

    field :lgs_user2, :string

    field :lgs__dec01, :decimal

    field :lgs__dec02, :decimal

    field :lgs__int01, :integer

    field :lgs__int02, :integer

    field :lgs__log01, Conduit.QAD.Types.Bool

    field :lgs__log02, Conduit.QAD.Types.Bool

    field :lgs__dte01, Conduit.QAD.Types.Date

    field :lgs__dte02, Conduit.QAD.Types.Date

    field :lgs__qadc01, :string

    field :lgs__qadc02, :string

    field :lgs__qadc03, :string

    field :lgs__qadc04, :string

    field :lgs__qadd01, :decimal

    field :lgs__qadd02, :decimal

    field :lgs__qadi01, :integer

    field :lgs__qadi02, :integer

    field :lgs__qadl01, Conduit.QAD.Types.Bool

    field :lgs__qadl02, Conduit.QAD.Types.Bool

    field :lgs__qadt01, Conduit.QAD.Types.Date

    field :lgs__qadt02, Conduit.QAD.Types.Date

    field :lgs_tax_env, :string

    field :lgs_taxc, :string

    field :lgs_price_imp, Conduit.QAD.Types.Bool

    field :lgs_tax_imp, Conduit.QAD.Types.Bool

    field :lgs_domain, :string

    field :oid_lgs_mstr, :decimal, primary_key: true

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
