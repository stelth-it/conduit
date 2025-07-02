defmodule Elixir.Conduit.QAD.Table.Verd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_verd_det" do
    field :verd_vendor, :string

    field :verd_vendor_source, :string

    field :verd_site, :string

    field :verd_category, :string

    field :verd_active_flag, Conduit.QAD.Types.Bool

    field :verd_mod_userid, :string

    field :verd_mod_date, Conduit.QAD.Types.Date

    field :verd_user1, :string

    field :verd_user2, :string

    field :verd_user3, :string

    field :verd_user4, :string

    field :verd__qadc01, :string

    field :verd__qadc02, :string

    field :verd__qadc03, :string

    field :verd__qadc04, :string

    field :verd__qadd01, :decimal

    field :verd__qadd02, :decimal

    field :verd__qadl01, Conduit.QAD.Types.Bool

    field :verd__qadl02, Conduit.QAD.Types.Bool

    field :verd__qadt01, Conduit.QAD.Types.Date

    field :verd__qadt02, Conduit.QAD.Types.Date

    field :verd__qadi01, :integer

    field :verd__qadi02, :integer

    field :verd_domain, :string

    field :oid_verd_det, :decimal, primary_key: true

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
