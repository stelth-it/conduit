defmodule Elixir.Conduit.QAD.Table.Hd_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_hd_mstr" do
    field :hd_date, Conduit.QAD.Types.Date

    field :hd_desc, :string

    field :hd_user1, :string

    field :hd_user2, :string

    field :hd_site, :string

    field :hd__qadc01, :string

    field :hd_domain, :string

    field :oid_hd_mstr, :decimal, primary_key: true

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
