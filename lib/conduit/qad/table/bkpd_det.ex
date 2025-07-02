defmodule Elixir.Conduit.QAD.Table.Bkpd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bkpd_det" do
    field :bkpd_bank, :string

    field :bkpd_pay_method, :string

    field :bkpd_module, :string

    field :bkpd_processed, Conduit.QAD.Types.Bool

    field :bkpd_curr, :string

    field :bkpd_amt, :decimal

    field :bkpd_addr, :string

    field :bkpd_payment_nbr, :integer

    field :bkpd_bk_acct, :string

    field :bkpd_resale_amt, :decimal

    field :bkpd_ref, :string

    field :bkpd_user1, :string

    field :bkpd_user2, :string

    field :bkpd_userc03, :string

    field :bkpd_userc04, :string

    field :bkpd_usert01, Conduit.QAD.Types.Date

    field :bkpd_usert02, Conduit.QAD.Types.Date

    field :bkpd_userl01, Conduit.QAD.Types.Bool

    field :bkpd_userl02, Conduit.QAD.Types.Bool

    field :bkpd__qadc01, :string

    field :bkpd__qadc02, :string

    field :bkpd_nbr, :string

    field :bkpd_due_date, Conduit.QAD.Types.Date

    field :bkpd_separate, Conduit.QAD.Types.Bool

    field :bkpd_full_bk_acct, :string

    field :bkpd_cs_bank, :string

    field :bkpd_seq, :integer

    field :bkpd_mod_date, Conduit.QAD.Types.Date

    field :bkpd_mod_userid, :string

    field :bkpd_userc05, :string

    field :bkpd_userd01, :decimal

    field :bkpd_userd02, :decimal

    field :bkpd_useri01, :integer

    field :bkpd_useri02, :integer

    field :bkpd__qadc03, :string

    field :bkpd__qadc04, :string

    field :bkpd__qadc05, :string

    field :bkpd__qadd01, :decimal

    field :bkpd__qadd02, :decimal

    field :bkpd__qadi01, :integer

    field :bkpd__qadi02, :integer

    field :bkpd__qadl01, Conduit.QAD.Types.Bool

    field :bkpd__qadl02, Conduit.QAD.Types.Bool

    field :bkpd__qadt01, Conduit.QAD.Types.Date

    field :bkpd__qadt02, Conduit.QAD.Types.Date

    field :bkpd_domain, :string

    field :oid_bkpd_det, :decimal, primary_key: true

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
