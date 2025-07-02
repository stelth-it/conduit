defmodule Elixir.Conduit.QAD.Table.Com_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_com_mstr" do
    field :com_comm_code, :string

    field :com_desc, :string

    field :com_suppl, Conduit.QAD.Types.Bool

    field :com_uom, :string

    field :com_user1, :string

    field :com_user2, :string

    field :com__log01, Conduit.QAD.Types.Bool

    field :com__qad01, :string

    field :com__qad02, :string

    field :com__qad03, Conduit.QAD.Types.Bool

    field :com_domain, :string

    field :oid_com_mstr, :decimal, primary_key: true

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
