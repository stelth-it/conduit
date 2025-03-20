defmodule Elixir.Conduit.QAD.Table.Bkd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bkd_det" do
    field :bkd_bank, :string

    field :bkd_pay_method, :string

    field :bkd_module, :string

    field :bkd_auto_payment, Conduit.QAD.Types.Bool

    field :bkd_manual_payment, Conduit.QAD.Types.Bool

    field :bkd_draft, Conduit.QAD.Types.Bool

    field :bkd_from_ck, :integer

    field :bkd_to_ck, :integer

    field :bkd_next_ck, :integer

    field :bkd_pip_acct, :string

    field :bkd_pip_cc, :string

    field :bkd_program, :string

    field :bkd_user1, :string

    field :bkd_user2, :string

    field :bkd_file, Conduit.QAD.Types.Bool

    field :bkd_validation_list, :string

    field :bkd_curr_list, :string

    field :bkd_swift, Conduit.QAD.Types.Bool

    field :bkd_acc_mandatory, Conduit.QAD.Types.Bool

    field :bkd_userl01, Conduit.QAD.Types.Bool

    field :bkd__qadl01, Conduit.QAD.Types.Bool

    field :bkd_userd01, :decimal

    field :bkd__qadd01, :decimal

    field :bkd_usert01, Conduit.QAD.Types.Date

    field :bkd_pay_group, :integer

    field :bkd_exceed_balance, Conduit.QAD.Types.Bool

    field :bkd_recon_credit, Conduit.QAD.Types.Bool

    field :bkd_pip_sub, :string

    field :bkd_useri01, :integer

    field :bkd__qadi01, :integer

    field :bkd__qadc01, :string

    field :bkd__qadc02, :string

    field :bkd__qadt01, Conduit.QAD.Types.Date

    field :bkd_mod_date, Conduit.QAD.Types.Date

    field :bkd_mod_userid, :string

    field :bkd_domain, :string

    field :oid_bkd_det, :decimal, primary_key: true

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
