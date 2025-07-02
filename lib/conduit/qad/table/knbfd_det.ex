defmodule Elixir.Conduit.QAD.Table.Knbfd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_knbfd_det" do
    field :knbfd_keyid, :decimal

    field :knbfd_knb_keyid, :decimal

    field :knbfd_seq, :integer

    field :knbfd_knp_keyid, :decimal

    field :knbfd_mod_date, Conduit.QAD.Types.Date

    field :knbfd_mod_userid, :string

    field :knbfd_user1, :string

    field :knbfd_user2, :string

    field :knbfd__qadc01, :string

    field :knbfd__qadc02, :string

    field :knbfd_knbs_keyid, :decimal

    field :knbfd_domain, :string

    field :oid_knbfd_det, :decimal, primary_key: true

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
