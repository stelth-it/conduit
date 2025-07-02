defmodule Elixir.Conduit.QAD.Table.Esaps_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esaps_det" do
    field :oid_esaps_det, :decimal, primary_key: true

    field :oid_esap_mstr, :decimal, primary_key: true

    field :oid_esaps_det_parent, :decimal, primary_key: true

    field :esaps_order, :integer

    field :esaps_include, Conduit.QAD.Types.Bool

    field :esaps_table_name, :string

    field :esaps_code, :string

    field :esaps_multiple, Conduit.QAD.Types.Bool

    field :esaps_mod_date, Conduit.QAD.Types.Date

    field :esaps_mod_userid, :string

    field :esaps_user1, :string

    field :esaps_user2, :string

    field :esaps__qadc01, :string

    field :esaps__qadc02, :string

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
