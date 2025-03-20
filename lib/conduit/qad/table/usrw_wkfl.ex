defmodule Elixir.Conduit.QAD.Table.Usrw_wkfl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_usrw_wkfl" do
    field :usrw_key1, :string

    field :usrw_key2, :string

    field :usrw_key3, :string

    field :usrw_key4, :string

    field :usrw_key5, :string

    field :usrw_key6, :string

    field :usrw_charfld, {:array, :string}

    field :usrw_decfld, {:array, :decimal}

    field :usrw_datefld, {:array, Conduit.QAD.Types.Date}

    field :usrw_user1, :string

    field :usrw_user2, :string

    field :usrw__qadc01, :string

    field :usrw_logfld, {:array, Conduit.QAD.Types.Bool}

    field :usrw_intfld, {:array, :integer}

    field :usrw_domain, :string

    field :oid_usrw_wkfl, :decimal, primary_key: true

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
