defmodule Elixir.Conduit.QAD.Table.Aud_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_aud_det" do
    field :aud_dataset, :string

    field :aud_userid, :string

    field :aud_date, Conduit.QAD.Types.Date

    field :aud_key1, :string

    field :aud_key2, :string

    field :aud_key3, :string

    field :aud_key4, :string

    field :aud_key5, :string

    field :aud_key6, :string

    field :aud_key7, :string

    field :aud_old_data, {:array, :string}

    field :aud_time, :string

    field :aud_entry, :integer

    field :aud_user1, :string

    field :aud_user2, :string

    field :aud_field, :string

    field :aud_new_data, {:array, :string}

    field :aud__qadc01, :string

    field :aud_domain, :string

    field :oid_aud_det, :decimal, primary_key: true

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
