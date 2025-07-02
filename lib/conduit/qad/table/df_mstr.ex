defmodule Elixir.Conduit.QAD.Table.Df_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_df_mstr" do
    field :df_type, :string

    field :df_format, :string

    field :df_desc, :string

    field :df_form_code, :string

    field :df_inv, Conduit.QAD.Types.Bool

    field :df_user1, :string

    field :df_user2, :string

    field :df__qadc01, :string

    field :df_domain, :string

    field :oid_df_mstr, :decimal, primary_key: true

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
