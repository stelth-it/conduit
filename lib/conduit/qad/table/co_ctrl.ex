defmodule Elixir.Conduit.QAD.Table.Co_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_co_ctrl" do
    field :co__qad01, :string

    field :co_pl, :string

    field :co_ret, :string

    field :co_var_acct, :string

    field :co_enty_bal, Conduit.QAD.Types.Bool

    field :co_trns_acct, :string

    field :co_fx_acct, :string

    field :co_user1, :string

    field :co_user2, :string

    field :co__qadi01, :integer

    field :co_allow_mod, Conduit.QAD.Types.Bool

    field :co_page_num, :integer

    field :co_cont_page, Conduit.QAD.Types.Bool

    field :co_use_sub, Conduit.QAD.Types.Bool

    field :co_use_cc, Conduit.QAD.Types.Bool

    field :co_daily_seq, Conduit.QAD.Types.Bool

    field :co_ex_ratetype, :string

    field :co_audglt, Conduit.QAD.Types.Bool

    field :co__qadl01, Conduit.QAD.Types.Bool

    field :co_yec_acct, :string

    field :co_yec_sub, :string

    field :co_yec_cc, :string

    field :co_yec_desc, :string

    field :co_bfb_acct, :string

    field :co_bfb_sub, :string

    field :co_bfb_cc, :string

    field :co_bfb_desc, :string

    field :co_close_bs, Conduit.QAD.Types.Bool

    field :co_sup_reop, Conduit.QAD.Types.Bool

    field :co_domain, :string

    field :oid_co_ctrl, :decimal, primary_key: true

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
