defmodule Elixir.Conduit.QAD.Table.Txz_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_txz_mstr" do
    field :txz_tax_zone, :string

    field :txz_desc, :string

    field :txz_ctry_code, :string

    field :txz_state, :string

    field :txz_county, :string

    field :txz_city, :string

    field :txz_zip, :string

    field :txz_user1, :string

    field :txz_user2, :string

    field :txz__log01, Conduit.QAD.Types.Bool

    field :txz__qad01, :string

    field :txz__qad02, :string

    field :txz__qad03, Conduit.QAD.Types.Bool

    field :txz_domain, :string

    field :oid_txz_mstr, :decimal, primary_key: true

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
