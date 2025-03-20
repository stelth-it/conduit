defmodule Elixir.Conduit.QAD.Table.Al_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_al_mstr" do
    field :al_code, :string

    field :al_desc, :string

    field :al_user1, :string

    field :al_user2, :string

    field :al_userid, :string

    field :al__qad01, Conduit.QAD.Types.Date

    field :al_domain, :string

    field :oid_al_mstr, :decimal, primary_key: true

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
