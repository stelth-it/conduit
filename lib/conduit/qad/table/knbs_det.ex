defmodule Elixir.Conduit.QAD.Table.Knbs_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbs_det" do
    field :knbs_keyid, :decimal

    field :knbs_source_type, :string

    field :knbs_ref1, :string

    field :knbs_ref2, :string

    field :knbs_ref3, :string

    field :knbs_ref4, :string

    field :knbs_ref5, :string

    field :knbs_mod_date, Conduit.QAD.Types.Date

    field :knbs_mod_userid, :string

    field :knbs_user1, :string

    field :knbs_user2, :string

    field :knbs__qadc01, :string

    field :knbs__qadc02, :string

    field :knbs_domain, :string

    field :oid_knbs_det, :decimal, primary_key: true

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
