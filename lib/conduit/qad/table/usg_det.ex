defmodule Elixir.Conduit.QAD.Table.Usg_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_usg_det" do
    field :usg_product, :string

    field :usg_exec, :string

    field :usg_count, :integer

    field :usg_userid, :string

    field :usg_date, Conduit.QAD.Types.Date

    field :usg_clear_date, Conduit.QAD.Types.Date

    field :usg_user1, :string

    field :usg_user2, :string

    field :usg__qadc01, :string

    field :usg__qadc02, :string

    field :usg__qadd01, :decimal

    field :usg__qadt01, Conduit.QAD.Types.Date

    field :oid_usg_det, :decimal, primary_key: true

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
