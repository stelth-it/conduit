defmodule Elixir.Conduit.QAD.Table.Fabchd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fabchd_det" do
    field :fabchd_fabch_id, :string

    field :fabchd_desc, :string

    field :fabchd_fa_id, :string

    field :fabchd_facls_id, :string

    field :fabchd_faloc_id, :string

    field :fabchd_puramt, :decimal

    field :fabchd_startdt, Conduit.QAD.Types.Date

    field :fabchd_ins_co, :string

    field :fabchd_ins_date, Conduit.QAD.Types.Date

    field :fabchd_salvamt, :decimal

    field :fabchd_ins_nbr, :string

    field :fabchd_insamt, :decimal

    field :fabchd_uplife, :integer

    field :fabchd_upper, :integer

    field :fabchd_um, :string

    field :fabchd_qty, :integer

    field :fabchd_user1, :string

    field :fabchd_user2, :string

    field :fabchd_mod_user, :string

    field :fabchd_mod_date, Conduit.QAD.Types.Date

    field :fabchd__chr01, :string

    field :fabchd__dec01, :decimal

    field :fabchd__log01, Conduit.QAD.Types.Bool

    field :fabchd__dte01, Conduit.QAD.Types.Date

    field :fabchd__int01, :integer

    field :fabchd__qadc01, :string

    field :fabchd__qadd01, :decimal

    field :fabchd__qadl01, Conduit.QAD.Types.Bool

    field :fabchd__qadi01, :integer

    field :fabchd__qadt01, Conduit.QAD.Types.Date

    field :fabchd_domain, :string

    field :oid_fabchd_det, :decimal, primary_key: true

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
