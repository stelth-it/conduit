defmodule Elixir.Conduit.QAD.Table.Vex_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vex_mstr" do
    field :vex_site, :string

    field :vex_vendor, :string

    field :vex_vendor_source, :string

    field :vex_to_site, :string

    field :vex_to_vendor, :string

    field :vex_to_vendor_source, :string

    field :vex_mod_userid, :string

    field :vex_mod_date, Conduit.QAD.Types.Date

    field :vex_user1, :string

    field :vex_user2, :string

    field :vex_user3, :string

    field :vex_user4, :string

    field :vex__qadc01, :string

    field :vex__qadc02, :string

    field :vex__qadc03, :string

    field :vex__qadc04, :string

    field :vex__qadd01, :decimal

    field :vex__qadd02, :decimal

    field :vex__qadl01, Conduit.QAD.Types.Bool

    field :vex__qadl02, Conduit.QAD.Types.Bool

    field :vex__qadt02, Conduit.QAD.Types.Date

    field :vex__qadt01, Conduit.QAD.Types.Date

    field :vex__qadi01, :integer

    field :vex__qadi02, :integer

    field :vex_domain, :string

    field :oid_vex_mstr, :decimal, primary_key: true

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
