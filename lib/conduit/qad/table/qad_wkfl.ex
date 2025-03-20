defmodule Elixir.Conduit.QAD.Table.Qad_wkfl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qad_wkfl" do
    field :qad_key1, :string

    field :qad_key2, :string

    field :qad_key3, :string

    field :qad_key4, :string

    field :qad_key5, :string

    field :qad_key6, :string

    field :qad_charfld, {:array, :string}

    field :qad_decfld, {:array, :decimal}

    field :qad_datefld, {:array, Conduit.QAD.Types.Date}

    field :qad_user1, :string

    field :qad_user2, :string

    field :qad__qadc01, :string

    field :qad_logfld, {:array, Conduit.QAD.Types.Bool}

    field :qad_charfld1, {:array, :string}

    field :qad_intfld, {:array, :integer}

    field :qad_domain, :string

    field :oid_qad_wkfl, :decimal, primary_key: true

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
