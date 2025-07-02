defmodule Elixir.Conduit.QAD.Table.Pta_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pta_det" do
    field :pta_assoc_type, :string

    field :pta_item, :string

    field :pta_um, :string

    field :pta_assoc_item, :string

    field :pta_assoc_um, :string

    field :pta_assoc_qty, :decimal

    field :pta_curr, :string

    field :pta_net_price, :decimal

    field :pta_pri_type, :string

    field :pta_min_ord, :decimal

    field :pta_qty_mult, :decimal

    field :pta_max_qty, :decimal

    field :pta_start, Conduit.QAD.Types.Date

    field :pta_expire, Conduit.QAD.Types.Date

    field :pta_user1, :string

    field :pta_user2, :string

    field :pta__qadc01, :string

    field :pta__qadc02, :string

    field :pta__qadd01, :decimal

    field :pta__qadd02, :decimal

    field :pta__qadl01, Conduit.QAD.Types.Bool

    field :pta__dte01, Conduit.QAD.Types.Date

    field :pta__dte02, Conduit.QAD.Types.Date

    field :pta__dec01, :decimal

    field :pta__dec02, :decimal

    field :pta__log01, Conduit.QAD.Types.Bool

    field :pta__chr01, :string

    field :pta__chr02, :string

    field :pta__chr03, :string

    field :pta__chr04, :string

    field :pta__chr05, :string

    field :pta__chr06, :string

    field :pta__chr07, :string

    field :pta__chr08, :string

    field :pta__chr09, :string

    field :pta__chr10, :string

    field :pta_cmtindx, :integer

    field :pta_extrec, Conduit.QAD.Types.Bool

    field :pta_domain, :string

    field :oid_pta_det, :decimal, primary_key: true

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
