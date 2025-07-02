defmodule Elixir.Conduit.QAD.Table.Ip_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ip_mstr" do
    field :ip_part, :string

    field :ip_routing, :string

    field :ip_op, :integer

    field :ip_nbr, :string

    field :ip_user1, :string

    field :ip_user2, :string

    field :ip__chr01, :string

    field :ip__chr02, :string

    field :ip__chr03, :string

    field :ip__chr04, :string

    field :ip__chr05, :string

    field :ip__dec01, :decimal

    field :ip__dec02, :decimal

    field :ip_domain, :string

    field :oid_ip_mstr, :decimal, primary_key: true

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
