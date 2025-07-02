defmodule Elixir.Conduit.QAD.Table.Bom_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bom_mstr" do
    field :bom_parent, :string

    field :bom_desc, :string

    field :bom_batch, :decimal

    field :bom_batch_um, :string

    field :bom_cmtindx, :integer

    field :bom_ll_code, :integer

    field :bom_user1, :string

    field :bom_user2, :string

    field :bom_userid, :string

    field :bom_mod_date, Conduit.QAD.Types.Date

    field :bom__chr01, :string

    field :bom__chr02, :string

    field :bom__chr03, :string

    field :bom__chr04, :string

    field :bom__chr05, :string

    field :bom__dte01, Conduit.QAD.Types.Date

    field :bom__dte02, Conduit.QAD.Types.Date

    field :bom__dec01, :decimal

    field :bom__dec02, :decimal

    field :bom__log01, Conduit.QAD.Types.Bool

    field :bom_formula, Conduit.QAD.Types.Bool

    field :bom_mthd, :string

    field :bom_fsm_type, :string

    field :bom_site, :string

    field :bom_loc, :string

    field :bom__qadc01, :string

    field :bom__qadc02, :string

    field :bom__qadc03, :string

    field :bom__qadd01, :decimal

    field :bom__qadi01, :integer

    field :bom__qadi02, :integer

    field :bom__qadt01, Conduit.QAD.Types.Date

    field :bom__qadt02, Conduit.QAD.Types.Date

    field :bom__qadl01, Conduit.QAD.Types.Bool

    field :bom__qadl02, Conduit.QAD.Types.Bool

    field :bom_mthd_qtycompl, :string

    field :bom_domain, :string

    field :oid_bom_mstr, :decimal, primary_key: true

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
