defmodule Elixir.Conduit.QAD.Table.Eswpfil_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eswpfil_det" do
    field :oid_eswpfil_det, :decimal, primary_key: true

    field :oid_eswp_mstr, :decimal, primary_key: true

    field :oid_esfil_mstr, :decimal, primary_key: true

    field :eswpfil_mod_date, Conduit.QAD.Types.Date

    field :eswpfil_mod_userid, :string

    field :eswpfil_user1, :string

    field :eswpfil_user2, :string

    field :eswpfil__qadc01, :string

    field :eswpfil__qadc02, :string

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
