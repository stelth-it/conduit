defmodule Elixir.Conduit.QAD.Table.Cctr_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cctr_hist" do
    field :cctr_nbr, :string

    field :cctr_inv_nbr, :string

    field :cctr_cc_nbr, :string

    field :cctr_tx_date, Conduit.QAD.Types.Date

    field :cctr_auth_nbr, :string

    field :cctr_amt, :decimal

    field :cctr_auth_expire_date, Conduit.QAD.Types.Date

    field :cctr_avs_code, :string

    field :cctr_status, :string

    field :cctr_err_msg, :string

    field :cctr_merch_txn, :string

    field :cctr_cust_txn, :string

    field :cctr_aux_msg, :string

    field :cctr_action_code, :string

    field :cctr_ref_code, :string

    field :cctr_internal_tx, Conduit.QAD.Types.Bool

    field :cctr_tx_type, :string

    field :cctr_auth_code, :string

    field :cctr_trnbr, :integer

    field :cctr_tx_time, :string

    field :cctr_mod_userid, :string

    field :cctr_mod_date, Conduit.QAD.Types.Date

    field :cctr_user1, :string

    field :cctr_user2, :string

    field :cctr__qadc01, :string

    field :cctr__qadi01, :integer

    field :cctr__qadd01, :decimal

    field :cctr__qadl01, Conduit.QAD.Types.Bool

    field :cctr__qadt01, Conduit.QAD.Types.Date

    field :cctr_domain, :string

    field :oid_cctr_hist, :decimal, primary_key: true

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
