defmodule Elixir.Conduit.QAD.Table.Knb_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knb_mstr" do
    field :knb_keyid, :decimal

    field :knb_knbi_keyid, :decimal

    field :knb_knbs_keyid, :decimal

    field :knb_knbsm_keyid, :decimal

    field :knb_loop_type, :string

    field :knb_mod_date, Conduit.QAD.Types.Date

    field :knb_mod_userid, :string

    field :knb_user1, :string

    field :knb_user2, :string

    field :knb__qadc01, :string

    field :knb__qadc02, :string

    field :knb_domain, :string

    field :oid_knb_mstr, :decimal, primary_key: true

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
