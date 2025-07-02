defmodule Elixir.Conduit.QAD.Table.Escat_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_escat_mstr" do
    field :oid_escat_mstr, :decimal, primary_key: true

    field :escat_category_code, :string

    field :escat_pplib, :string

    field :escat_top_table_name, :string

    field :escat_preview_prompt, Conduit.QAD.Types.Bool

    field :escat_mod_date, Conduit.QAD.Types.Date

    field :escat_mod_userid, :string

    field :escat_user1, :string

    field :escat_user2, :string

    field :escat__qadc01, :string

    field :escat__qadc02, :string

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
