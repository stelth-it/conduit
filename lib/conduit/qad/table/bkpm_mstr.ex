defmodule Elixir.Conduit.QAD.Table.Bkpm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bkpm_mstr" do
    field :bkpm_bank, :string

    field :bkpm_pay_method, :string

    field :bkpm_module, :string

    field :bkpm_filename, :string

    field :bkpm_create_date, Conduit.QAD.Types.Date

    field :bkpm_create_time, :string

    field :bkpm_bk_acct, :string

    field :bkpm_processed, Conduit.QAD.Types.Bool

    field :bkpm_ck_date, Conduit.QAD.Types.Date

    field :bkpm_max_amt, :decimal

    field :bkpm_recon_credit, Conduit.QAD.Types.Bool

    field :bkpm_amt, :decimal

    field :bkpm_media_nbr, :string

    field :bkpm_user1, :string

    field :bkpm_user2, :string

    field :bkpm_userc03, :string

    field :bkpm_userc04, :string

    field :bkpm_usert01, Conduit.QAD.Types.Date

    field :bkpm_usert02, Conduit.QAD.Types.Date

    field :bkpm_userl01, Conduit.QAD.Types.Bool

    field :bkpm_userl02, Conduit.QAD.Types.Bool

    field :bkpm__qadc01, :string

    field :bkpm__qadc02, :string

    field :bkpm_batch, :string

    field :bkpm_exceed_balance, Conduit.QAD.Types.Bool

    field :bkpm_full_bk_acct, :string

    field :bkpm_comp_addr, :string

    field :bkpm_seq, :integer

    field :bkpm_mod_date, Conduit.QAD.Types.Date

    field :bkpm_mod_userid, :string

    field :bkpm_userc05, :string

    field :bkpm_userd01, :decimal

    field :bkpm_userd02, :decimal

    field :bkpm_useri01, :integer

    field :bkpm_useri02, :integer

    field :bkpm__qadc03, :string

    field :bkpm__qadc04, :string

    field :bkpm__qadc05, :string

    field :bkpm__qadd01, :decimal

    field :bkpm__qadd02, :decimal

    field :bkpm__qadi01, :integer

    field :bkpm__qadi02, :integer

    field :bkpm__qadl01, Conduit.QAD.Types.Bool

    field :bkpm__qadl02, Conduit.QAD.Types.Bool

    field :bkpm__qadt01, Conduit.QAD.Types.Date

    field :bkpm__qadt02, Conduit.QAD.Types.Date

    field :bkpm_domain, :string

    field :oid_bkpm_mstr, :decimal, primary_key: true

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
