defmodule Elixir.Conduit.QAD.Table.Shv_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_shv_mstr" do
    field :shv_mode_transp, :string

    field :shv_name, :string

    field :shv_port_mandatory, Conduit.QAD.Types.Bool

    field :shv_shipvia, :string

    field :shv_mod_date, Conduit.QAD.Types.Date

    field :shv_mod_userid, :string

    field :shv_user1, :string

    field :shv_user2, :string

    field :shv__qadc01, :string

    field :shv__qadc02, :string

    field :shv_domain, :string

    field :oid_shv_mstr, :decimal, primary_key: true

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
