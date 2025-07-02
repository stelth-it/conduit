defmodule Elixir.Conduit.QAD.Table.Msg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_msg_mstr" do
    field :msg_nbr, :integer

    field :msg_desc, :string

    field :msg_lang, :string

    field :msg_user1, :string

    field :msg_user2, :string

    field :msg_type, :string

    field :msg_explanation, {:array, :string}

    field :msg__qadc01, :string

    field :oid_msg_mstr, :decimal, primary_key: true

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
