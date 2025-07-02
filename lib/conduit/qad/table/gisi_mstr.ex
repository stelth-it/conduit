defmodule Elixir.Conduit.QAD.Table.Gisi_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_gisi_mstr" do
    field :gisi_app_code, :string

    field :gisi_site, :string

    field :gisi_part, :string

    field :gisi_model_name, :string

    field :gisi_ref_key, :integer

    field :gisi_mod_date, Conduit.QAD.Types.Date

    field :gisi_mod_userid, :string

    field :gisi_user1, :string

    field :gisi_user2, :string

    field :gisi__qadc01, :string

    field :gisi__qadc02, :string

    field :gisi_domain, :string

    field :oid_gisi_mstr, :decimal, primary_key: true

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
