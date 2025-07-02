defmodule Elixir.Conduit.QAD.Table.Escd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_escd_det" do
    field :oid_escd_det, :decimal, primary_key: true

    field :oid_esig_mstr, :decimal, primary_key: true

    field :oid_escat_mstr, :decimal, primary_key: true

    field :oid_top_erecord, :decimal, primary_key: true

    field :oid_esap_mstr, :decimal, primary_key: true

    field :escd_date, Conduit.QAD.Types.Date

    field :escd_time, :integer

    field :escd_timezone, :string

    field :escd_mod_date, Conduit.QAD.Types.Date

    field :escd_mod_userid, :string

    field :escd_user1, :string

    field :escd_user2, :string

    field :escd__qadc01, :string

    field :escd__qadc02, :string

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
