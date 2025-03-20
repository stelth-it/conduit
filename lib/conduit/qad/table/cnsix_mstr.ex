defmodule Elixir.Conduit.QAD.Table.Cnsix_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cnsix_mstr" do
    field :cnsix_pkey, :integer

    field :cnsix_receipt_trnbr, :integer

    field :cnsix_receiver, :string

    field :cnsix_po_nbr, :string

    field :cnsix_pod_line, :integer

    field :cnsix_site, :string

    field :cnsix_part, :string

    field :cnsix_asn_shipper, :string

    field :cnsix_qty_consigned, :decimal

    field :cnsix_lotser, :string

    field :cnsix_ref, :string

    field :cnsix_aged_date, Conduit.QAD.Types.Date

    field :cnsix_orig_aged_date, Conduit.QAD.Types.Date

    field :cnsix_mod_userid, :string

    field :cnsix_mod_date, Conduit.QAD.Types.Date

    field :cnsix_user1, :string

    field :cnsix_user2, :string

    field :cnsix__qadc01, :string

    field :cnsix__qadc02, :string

    field :cnsix_int_consignment, Conduit.QAD.Types.Bool

    field :cnsix_domain, :string

    field :oid_cnsix_mstr, :decimal, primary_key: true

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
