defmodule Elixir.Conduit.QAD.Table.Crc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_crc_ctrl" do
    field :crc__qadi01, :integer

    field :crc_nbr, :integer

    field :crc_user1, :string

    field :crc_user2, :string

    field :crc__qadc01, :string

    field :crc_domain, :string

    field :oid_crc_ctrl, :decimal, primary_key: true

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
