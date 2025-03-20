defmodule Elixir.Conduit.QAD.Table.Ihcc_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ihcc_hist" do
    field :ihcc_nbr, :string

    field :ihcc_cc_nbr, :string

    field :ihcc_cc_nbr_tail, :string

    field :ihcc_cc_expire_date, Conduit.QAD.Types.Date

    field :ihcc_card_type, :string

    field :ihcc_auth_date, Conduit.QAD.Types.Date

    field :ihcc_auth_nbr, :string

    field :ihcc_auth_amt, :decimal

    field :ihcc_auth_expire_date, Conduit.QAD.Types.Date

    field :ihcc_inv_nbr, :string

    field :ihcc_billing_name, :string

    field :ihcc_billing_addr1, :string

    field :ihcc_billing_addr2, :string

    field :ihcc_billing_addr3, :string

    field :ihcc_billing_city, :string

    field :ihcc_billing_zip, :string

    field :ihcc_billing_state, :string

    field :ihcc_billing_country, :string

    field :ihcc_billing_ctry, :string

    field :ihcc_mod_userid, :string

    field :ihcc_mod_date, Conduit.QAD.Types.Date

    field :ihcc_user1, :string

    field :ihcc_user2, :string

    field :ihcc__qadc01, :string

    field :ihcc__qadi01, :integer

    field :ihcc__qadd01, :decimal

    field :ihcc__qadl01, Conduit.QAD.Types.Bool

    field :ihcc__qadt01, Conduit.QAD.Types.Date

    field :ihcc_domain, :string

    field :oid_ihcc_hist, :decimal, primary_key: true

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
