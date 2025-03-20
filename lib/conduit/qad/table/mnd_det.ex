defmodule Elixir.Conduit.QAD.Table.Mnd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mnd_det" do
    field :mnd_nbr, :string

    field :mnd_select, :integer

    field :mnd_label, :string

    field :mnd_exec, :string

    field :mnd_fkey, :integer

    field :mnd_help, :string

    field :mnd_canrun, :string

    field :mnd_name, :string

    field :mnd_user1, :string

    field :mnd_user2, :string

    field :mnd__qadc01, :string

    field :oid_mnd_det, :decimal, primary_key: true

    field :mnd_uri, :string

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
