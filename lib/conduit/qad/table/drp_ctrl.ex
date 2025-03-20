defmodule Elixir.Conduit.QAD.Table.Drp_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_drp_ctrl" do
    field :drp_auto_req, Conduit.QAD.Types.Bool

    field :drp_req_nbr, :integer

    field :drp_rcmmts, Conduit.QAD.Types.Bool

    field :drp_user1, :string

    field :drp_user2, :string

    field :drp__qadi01, :integer

    field :drp_req_pre, :string

    field :drp_auto_nbr, Conduit.QAD.Types.Bool

    field :drp_nbr, :integer

    field :drp_nbr_pre, :string

    field :drp_dcmmts, Conduit.QAD.Types.Bool

    field :drp_mrp, Conduit.QAD.Types.Bool

    field :drp__qadc01, :string

    field :drp_domain, :string

    field :oid_drp_ctrl, :decimal, primary_key: true

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
