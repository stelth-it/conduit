defmodule Elixir.Conduit.QAD.Table.Gip_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_gip_det" do
    field :gip_ref_key, :integer

    field :gip_attribute, :string

    field :gip_app_code, :string

    field :gip_logical, Conduit.QAD.Types.Bool

    field :gip_integer, :integer

    field :gip_char, :string

    field :gip_decimal, :decimal

    field :gip_table_name, :string

    field :gip_date, Conduit.QAD.Types.Date

    field :gip_mod_date, Conduit.QAD.Types.Date

    field :gip_mod_userid, :string

    field :gip_user1, :string

    field :gip_user2, :string

    field :gip__qadc01, :string

    field :gip__qadc02, :string

    field :gip_domain, :string

    field :oid_gip_det, :decimal, primary_key: true

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
