defmodule Elixir.Conduit.QAD.Table.Bkad_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bkad_det" do
    field :bkad_bank, :string

    field :bkad_pay_method, :string

    field :bkad_module, :string

    field :bkad_addr, :string

    field :bkad_payment_nbr, :integer

    field :bkad_ref, :string

    field :bkad_processed, Conduit.QAD.Types.Bool

    field :bkad_amt_chg, :decimal

    field :bkad_disc_chg, :decimal

    field :bkad_user1, :string

    field :bkad_user2, :string

    field :bkad_userc03, :string

    field :bkad_userc04, :string

    field :bkad_usert01, Conduit.QAD.Types.Date

    field :bkad_usert02, Conduit.QAD.Types.Date

    field :bkad_userl01, Conduit.QAD.Types.Bool

    field :bkad_userl02, Conduit.QAD.Types.Bool

    field :bkad__qadc01, :string

    field :bkad__qadc02, :string

    field :bkad_curr, :string

    field :bkad_alloc_id, :integer

    field :bkad_seq, :integer

    field :bkad_mod_date, Conduit.QAD.Types.Date

    field :bkad_mod_userid, :string

    field :bkad_userc05, :string

    field :bkad_userd01, :decimal

    field :bkad_userd02, :decimal

    field :bkad_useri01, :integer

    field :bkad_useri02, :integer

    field :bkad__qadc03, :string

    field :bkad__qadc04, :string

    field :bkad__qadc05, :string

    field :bkad__qadd01, :decimal

    field :bkad__qadd02, :decimal

    field :bkad__qadi01, :integer

    field :bkad__qadi02, :integer

    field :bkad__qadl01, Conduit.QAD.Types.Bool

    field :bkad__qadl02, Conduit.QAD.Types.Bool

    field :bkad__qadt01, Conduit.QAD.Types.Date

    field :bkad__qadt02, Conduit.QAD.Types.Date

    field :bkad_domain, :string

    field :oid_bkad_det, :decimal, primary_key: true

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
