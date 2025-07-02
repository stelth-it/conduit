defmodule Elixir.Conduit.QAD.Table.Ssm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ssm_mstr" do
    field :ssm_network, :string

    field :ssm_desc, :string

    field :ssm_planner, :string

    field :ssm_user1, :string

    field :ssm_user2, :string

    field :ssm__qadc01, :string

    field :ssm_domain, :string

    field :oid_ssm_mstr, :decimal, primary_key: true

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
