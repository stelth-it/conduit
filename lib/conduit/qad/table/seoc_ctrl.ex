defmodule Elixir.Conduit.QAD.Table.Seoc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_seoc_ctrl" do
    field :seoc_bo_advice, :integer

    field :seoc_dnote, :integer

    field :seoc_immed_ship, Conduit.QAD.Types.Bool

    field :seoc__chr01, :string

    field :seoc__chr02, :string

    field :seoc__chr03, :string

    field :seoc__chr04, :string

    field :seoc__chr05, :string

    field :seoc__dec01, :decimal

    field :seoc__dec02, :decimal

    field :seoc__dte01, Conduit.QAD.Types.Date

    field :seoc__dte02, Conduit.QAD.Types.Date

    field :seoc__log01, Conduit.QAD.Types.Bool

    field :seoc__log02, Conduit.QAD.Types.Bool

    field :seoc_index1, :integer

    field :seoc_hcmmts, Conduit.QAD.Types.Bool

    field :seoc_lcmmts, Conduit.QAD.Types.Bool

    field :seoc_confirm, Conduit.QAD.Types.Bool

    field :seoc_kit_nbr, :integer

    field :seoc_det_all, Conduit.QAD.Types.Bool

    field :seoc_all_days, :integer

    field :seoc_ln_fmt, Conduit.QAD.Types.Bool

    field :seoc_so_hist, Conduit.QAD.Types.Bool

    field :seoc_kit_auto, Conduit.QAD.Types.Bool

    field :seoc__qadl02, Conduit.QAD.Types.Bool

    field :seoc_req, Conduit.QAD.Types.Bool

    field :seoc_shp_lead, :integer

    field :seoc_so, :integer

    field :seoc_so_pre, :string

    field :seoc_consume, Conduit.QAD.Types.Bool

    field :seoc_ship_to, Conduit.QAD.Types.Bool

    field :seoc__qadd01, :decimal

    field :seoc_user1, :string

    field :seoc_user2, :string

    field :seoc_mod_date, Conduit.QAD.Types.Date

    field :seoc_mod_userid, :string

    field :seoc_kit_pre, :string

    field :seoc__qadc02, :string

    field :seoc__qadl01, Conduit.QAD.Types.Bool

    field :seoc_int_cust, :string

    field :seoc__qadi01, :integer

    field :seoc_ex_ratetype, :string

    field :seoc__qadc03, :string

    field :seoc__qadd02, :decimal

    field :seoc__qadi02, :integer

    field :seoc__qadt01, Conduit.QAD.Types.Date

    field :seoc__qadt02, Conduit.QAD.Types.Date

    field :seoc_domain, :string

    field :oid_seoc_ctrl, :decimal, primary_key: true

    field :seoc_consume_shipped, :string

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
