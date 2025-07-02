defmodule Elixir.Conduit.QAD.Table.Ecd3_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecd3_det" do
    field :ecd3_nbr, :string

    field :ecd3_order, :integer

    field :ecd3_cmtindx, :integer

    field :ecd3_process, :string

    field :ecd3__qad01, Conduit.QAD.Types.Bool

    field :ecd3__qad02, Conduit.QAD.Types.Date

    field :ecd3__qad03, :string

    field :ecd3__qad04, :string

    field :ecd3__qad05, :string

    field :ecd3_mod_date, Conduit.QAD.Types.Date

    field :ecd3_userid, :string

    field :ecd3_user1, :string

    field :ecd3_user2, :string

    field :ecd3_domain, :string

    field :oid_ecd3_det, :decimal, primary_key: true

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
