defmodule Elixir.Conduit.QAD.Table.Cnsud_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cnsud_det" do
    field :cnsud_cnsu_pkey, :integer

    field :cnsud_cnsix_pkey, :integer

    field :cnsud_qty_used, :decimal

    field :cnsud_receipt_trnbr, :integer

    field :cnsud_receiver, :string

    field :cnsud_asn_shipper, :string

    field :cnsud_aged_date, Conduit.QAD.Types.Date

    field :cnsud_orig_aged_date, Conduit.QAD.Types.Date

    field :cnsud_mod_userid, :string

    field :cnsud_mod_date, Conduit.QAD.Types.Date

    field :cnsud_user1, :string

    field :cnsud_user2, :string

    field :cnsud__qadc01, :string

    field :cnsud__qadc02, :string

    field :cnsud_int_consignment, Conduit.QAD.Types.Bool

    field :cnsud_domain, :string

    field :oid_cnsud_det, :decimal, primary_key: true

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
