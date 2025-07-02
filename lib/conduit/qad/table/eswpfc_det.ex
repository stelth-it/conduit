defmodule Elixir.Conduit.QAD.Table.Eswpfc_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eswpfc_det" do
    field :oid_eswpfc_det, :decimal, primary_key: true

    field :oid_eswpfil_det, :decimal, primary_key: true

    field :eswpfc_value, :string

    field :oid_eswpfs_det, :decimal, primary_key: true

    field :eswpfc_mod_date, Conduit.QAD.Types.Date

    field :eswpfc_mod_userid, :string

    field :eswpfc_user1, :string

    field :eswpfc_user2, :string

    field :eswpfc__qadc01, :string

    field :eswpfc__qadc02, :string

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
