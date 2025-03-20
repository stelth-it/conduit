defmodule Elixir.Conduit.QAD.Table.Pjsx_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pjsx_det" do
    field :pjsx_nbr, :string

    field :pjsx_line, :integer

    field :pjsx_prj_nbr, :string

    field :pjsx_pjs_line, :integer

    field :pjsx_date, Conduit.QAD.Types.Date

    field :pjsx_def_ws, :string

    field :pjsx_end_date, Conduit.QAD.Types.Date

    field :pjsx_int_stat, :string

    field :pjsx_loc, :string

    field :pjsx_qty_demand, :decimal

    field :pjsx_qty_ord, :decimal

    field :pjsx_qty_in_prog, :decimal

    field :pjsx_qty_iss, :decimal

    field :pjsx_site, :string

    field :pjsx_so_nbr, :string

    field :pjsx_sod_line, :integer

    field :pjsx_start_date, Conduit.QAD.Types.Date

    field :pjsx_type, :string

    field :pjsx_mod_date, Conduit.QAD.Types.Date

    field :pjsx_mod_userid, :string

    field :pjsx_user1, :string

    field :pjsx_user2, :string

    field :pjsx__dec01, :decimal

    field :pjsx__log01, Conduit.QAD.Types.Bool

    field :pjsx__dte01, Conduit.QAD.Types.Date

    field :pjsx__qadc01, :string

    field :pjsx__qadc02, :string

    field :pjsx__qadd01, :decimal

    field :pjsx__qadi01, :integer

    field :pjsx__qadl01, Conduit.QAD.Types.Bool

    field :pjsx__qadt01, Conduit.QAD.Types.Date

    field :pjsx_domain, :string

    field :oid_pjsx_det, :decimal, primary_key: true

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
