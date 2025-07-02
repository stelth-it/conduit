defmodule Elixir.Conduit.QAD.Table.Sg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sg_mstr" do
    field :sg_grp, :string

    field :sg_desc, :string

    field :sg_inv_mov, :string

    field :sg_auto_tr, Conduit.QAD.Types.Bool

    field :sg_master_nr_id, :string

    field :sg_user1, :string

    field :sg_user2, :string

    field :sg__qadc01, :string

    field :sg_domain, :string

    field :oid_sg_mstr, :decimal, primary_key: true

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
