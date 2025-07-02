defmodule Elixir.Conduit.QAD.Table.Pli_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pli_mstr" do
    field :pli_keyid, :integer

    field :pli_internal_ref_type, :string

    field :pli_internal_ref, :string

    field :pli_supplier, :string

    field :pli_invoice, :string

    field :pli_invoice_amt, :decimal

    field :pli_curr, :string

    field :pli_invoice_date, Conduit.QAD.Types.Date

    field :pli_vo_ref, :string

    field :pli_ex_rate, :decimal

    field :pli_ex_rate2, :decimal

    field :pli_ex_ratetype, :string

    field :pli_exru_seq, :integer

    field :pli_taxable, Conduit.QAD.Types.Bool

    field :pli_taxc, :string

    field :pli_tax_env, :string

    field :pli_tax_in, Conduit.QAD.Types.Bool

    field :pli_tax_usage, :string

    field :pli_tax_date, Conduit.QAD.Types.Date

    field :pli_mod_date, Conduit.QAD.Types.Date

    field :pli_mod_userid, :string

    field :pli_user1, :string

    field :pli_user2, :string

    field :pli__qadc01, :string

    field :pli__qadc02, :string

    field :pli_domain, :string

    field :oid_pli_mstr, :decimal, primary_key: true

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
