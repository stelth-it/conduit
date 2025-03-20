defmodule Elixir.Conduit.QAD.Table.Mp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mp_mstr" do
    field :mp_nbr, :string

    field :mp_desc, :string

    field :mp_expire, Conduit.QAD.Types.Date

    field :mp_user1, :string

    field :mp_user2, :string

    field :mp__chr01, :string

    field :mp__chr02, :string

    field :mp__chr03, :string

    field :mp__chr04, :string

    field :mp__chr05, :string

    field :mp__dec01, :decimal

    field :mp__dec02, :decimal

    field :mp_domain, :string

    field :oid_mp_mstr, :decimal, primary_key: true

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
