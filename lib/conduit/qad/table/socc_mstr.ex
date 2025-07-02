defmodule Elixir.Conduit.QAD.Table.Socc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_socc_mstr" do
    field :socc_nbr, :string

    field :socc_cc_nbr, :string

    field :socc_cc_nbr_tail, :string

    field :socc_cc_expire_date, Conduit.QAD.Types.Date

    field :socc_card_type, :string

    field :socc_auth_date, Conduit.QAD.Types.Date

    field :socc_auth_nbr, :string

    field :socc_auth_amt, :decimal

    field :socc_auth_expire_date, Conduit.QAD.Types.Date

    field :socc_billing_name, :string

    field :socc_billing_addr1, :string

    field :socc_billing_addr2, :string

    field :socc_billing_addr3, :string

    field :socc_billing_city, :string

    field :socc_billing_zip, :string

    field :socc_billing_state, :string

    field :socc_billing_country, :string

    field :socc_billing_ctry, :string

    field :socc_mod_userid, :string

    field :socc_mod_date, Conduit.QAD.Types.Date

    field :socc_user1, :string

    field :socc_user2, :string

    field :socc__qadc01, :string

    field :socc__qadi01, :integer

    field :socc__qadd01, :decimal

    field :socc__qadl01, Conduit.QAD.Types.Bool

    field :socc__qadt01, Conduit.QAD.Types.Date

    field :socc_domain, :string

    field :oid_socc_mstr, :decimal, primary_key: true

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
