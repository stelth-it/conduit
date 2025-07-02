defmodule Elixir.Conduit.QAD.Table.Ap_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ap_mstr" do
    field :ap_type, :string

    field :ap_ref, :string

    field :ap_batch, :string

    field :ap_vend, :string

    field :ap_effdate, Conduit.QAD.Types.Date

    field :ap_date, Conduit.QAD.Types.Date

    field :ap_amt, :decimal

    field :ap_acct, :string

    field :ap_cc, :string

    field :ap_disc_acct, :string

    field :ap_disc_cc, :string

    field :ap_open, Conduit.QAD.Types.Bool

    field :ap_rmk, :string

    field :ap_user1, :string

    field :ap_user2, :string

    field :ap_curr, :string

    field :ap_ex_rate, :decimal

    field :ap_bank, :string

    field :ap_sort, :string

    field :ap_expt_date, Conduit.QAD.Types.Date

    field :ap_entity, :string

    field :ap_ent_ex, :decimal

    field :ap_ckfrm, :string

    field :ap__qad01, :string

    field :ap__qad02, :string

    field :ap__qad03, Conduit.QAD.Types.Bool

    field :ap_dy_code, :string

    field :ap_remit, :string

    field :ap_ex_rate2, :decimal

    field :ap_ex_ratetype, :string

    field :ap_base_amt, :decimal

    field :ap_exru_seq, :integer

    field :ap_sub, :string

    field :ap_disc_sub, :string

    field :ap_unapplied_ref, :string

    field :ap_domain, :string

    field :oid_ap_mstr, :decimal, primary_key: true

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
