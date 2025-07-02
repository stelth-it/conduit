defmodule Elixir.Conduit.QAD.Table.Esapfil_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esapfil_det" do
    field :oid_esapfil_det, :decimal, primary_key: true

    field :oid_esap_mstr, :decimal, primary_key: true

    field :oid_esfil_mstr, :decimal, primary_key: true

    field :esapfil_mod_date, Conduit.QAD.Types.Date

    field :esapfil_mod_userid, :string

    field :esapfil_user1, :string

    field :esapfil_user2, :string

    field :esapfil__qadc01, :string

    field :esapfil__qadc02, :string

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
