defmodule Elixir.Conduit.QAD.Table.Sgid_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sgid_det" do
    field :sgid_grp, :string

    field :sgid_inv_mov, :string

    field :sgid_preship_nr_id, :string

    field :sgid_ship_nr_id, :string

    field :sgid_format, :string

    field :sgid__qadc02, :string

    field :sgid_user1, :string

    field :sgid_user2, :string

    field :sgid__qadc01, :string

    field :sgid_default, Conduit.QAD.Types.Bool

    field :sgid_domain, :string

    field :oid_sgid_det, :decimal, primary_key: true

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
