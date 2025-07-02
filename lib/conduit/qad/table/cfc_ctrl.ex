defmodule Elixir.Conduit.QAD.Table.Cfc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cfc_ctrl" do
    field :cfc_cfnbr, :integer

    field :cfc__qadi01, :integer

    field :cfc_ex_round, :integer

    field :cfc_incl_ap, Conduit.QAD.Types.Bool

    field :cfc_incl_ar, Conduit.QAD.Types.Bool

    field :cfc_incl_so, Conduit.QAD.Types.Bool

    field :cfc_incl_po, Conduit.QAD.Types.Bool

    field :cfc_incl_cf, Conduit.QAD.Types.Bool

    field :cfc_incl_fs, Conduit.QAD.Types.Bool

    field :cfc_incl_qad01, Conduit.QAD.Types.Bool

    field :cfc_incl_qad02, Conduit.QAD.Types.Bool

    field :cfc_user1, :string

    field :cfc_user2, :string

    field :cfc_ex_tol, :decimal

    field :cfc_nbr_pre, :string

    field :cfc__chr01, :string

    field :cfc__chr02, :string

    field :cfc__chr03, :string

    field :cfc__chr04, :string

    field :cfc__chr05, :string

    field :cfc__dte01, Conduit.QAD.Types.Date

    field :cfc__dte02, Conduit.QAD.Types.Date

    field :cfc__dec01, :decimal

    field :cfc__dec02, :decimal

    field :cfc__log01, Conduit.QAD.Types.Bool

    field :cfc_domain, :string

    field :oid_cfc_ctrl, :decimal, primary_key: true

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
