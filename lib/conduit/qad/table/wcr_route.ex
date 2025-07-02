defmodule Elixir.Conduit.QAD.Table.Wcr_route do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_wcr_route" do
    field :wcr_wkctr, :string

    field :wcr_part, :string

    field :wcr_op, :integer

    field :wcr_rate, :integer

    field :wcr_mch, :string

    field :wcr_user1, :string

    field :wcr_user2, :string

    field :wcr__qadc01, :string

    field :wcr_domain, :string

    field :oid_wcr_route, :decimal, primary_key: true

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
