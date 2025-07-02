defmodule Elixir.Conduit.QAD.Table.Ver_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ver_mstr" do
    field :ver_vendor, :string

    field :ver_vendor_source, :string

    field :ver_site, :string

    field :ver_part, :string

    field :ver_comm_code, :string

    field :ver_active_flag, Conduit.QAD.Types.Bool

    field :ver_start, Conduit.QAD.Types.Date

    field :ver_end, Conduit.QAD.Types.Date

    field :ver_asn_leadtime, :string

    field :ver_days_early, :integer

    field :ver_days_late, :integer

    field :ver_use_shippct, Conduit.QAD.Types.Bool

    field :ver_overship_pct, :decimal

    field :ver_undership_pct, :decimal

    field :ver_use_shipqty, Conduit.QAD.Types.Bool

    field :ver_overship_qty, :integer

    field :ver_undership_qty, :integer

    field :ver_use_shippct_cost, Conduit.QAD.Types.Bool

    field :ver_overship_pct_cost, :decimal

    field :ver_use_shipqty_cost, Conduit.QAD.Types.Bool

    field :ver_overship_qty_cost, :decimal

    field :ver_contact, :string

    field :ver_email_address, :string

    field :ver_mod_userid, :string

    field :ver_mod_date, Conduit.QAD.Types.Date

    field :ver_user1, :string

    field :ver_user2, :string

    field :ver_user3, :string

    field :ver_user4, :string

    field :ver__qadc01, :string

    field :ver__qadc02, :string

    field :ver__qadc03, :string

    field :ver__qadc04, :string

    field :ver__qadd01, :decimal

    field :ver__qadd02, :decimal

    field :ver__qadl01, Conduit.QAD.Types.Bool

    field :ver__qadl02, Conduit.QAD.Types.Bool

    field :ver__qadt02, Conduit.QAD.Types.Date

    field :ver__qadt01, Conduit.QAD.Types.Date

    field :ver__qadi01, :integer

    field :ver__qadi02, :integer

    field :ver_domain, :string

    field :oid_ver_mstr, :decimal, primary_key: true

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
