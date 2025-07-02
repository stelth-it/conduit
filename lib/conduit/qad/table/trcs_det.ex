defmodule Elixir.Conduit.QAD.Table.Trcs_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_trcs_det" do
    field :trcs_mtl_std, :decimal

    field :trcs_lbr_std, :decimal

    field :trcs_bdn_std, :decimal

    field :trcs_price, :decimal

    field :trcs_trnbr, :integer

    field :trcs_sub_std, :decimal

    field :trcs_userid, :string

    field :trcs_user1, :string

    field :trcs_user2, :string

    field :trcs_curr, :string

    field :trcs_ex_rate, :decimal

    field :trcs_ovh_std, :decimal

    field :trcs__qad01, :string

    field :trcs__qad02, :string

    field :trcs__qad03, :string

    field :trcs__qad07, Conduit.QAD.Types.Date

    field :trcs__qad08, Conduit.QAD.Types.Date

    field :trcs__qad09, Conduit.QAD.Types.Date

    field :trcs__qad04, :decimal

    field :trcs__qad05, :decimal

    field :trcs__qad06, :decimal

    field :trcs__qad10, Conduit.QAD.Types.Bool

    field :trcs_set, :string

    field :trcs_domain, :string

    field :oid_trcs_det, :decimal, primary_key: true

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
