defmodule Elixir.Conduit.QAD.Table.Ccls_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ccls_mstr" do
    field :ccls_shipfrom, :string

    field :ccls_shipto, :string

    field :ccls_edit_lc_shipper, Conduit.QAD.Types.Bool

    field :ccls_cc_invoice, Conduit.QAD.Types.Bool

    field :ccls_lc_invoice, Conduit.QAD.Types.Bool

    field :ccls_cc_asn, Conduit.QAD.Types.Bool

    field :ccls_lc_asn, Conduit.QAD.Types.Bool

    field :ccls_charge_type, :string

    field :ccls_mod_userid, :string

    field :ccls_mod_date, Conduit.QAD.Types.Date

    field :ccls_userc01, :string

    field :ccls_userc02, :string

    field :ccls__qadc01, :string

    field :ccls__qadc02, :string

    field :ccls_domain, :string

    field :oid_ccls_mstr, :decimal, primary_key: true

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
