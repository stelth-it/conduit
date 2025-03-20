defmodule Elixir.Conduit.QAD.Table.Ind_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ind_det" do
    field :ind_site, :string

    field :ind_nbr, :string

    field :ind_part, :string

    field :ind_qty_req, :decimal

    field :ind_qty_all, :decimal

    field :ind_qty_pick, :decimal

    field :ind_qty_iss, :decimal

    field :ind_qty_chg, :decimal

    field :ind_bo_chg, :decimal

    field :ind_loc, :string

    field :ind_serial, :string

    field :ind_req_date, Conduit.QAD.Types.Date

    field :ind_request, :string

    field :ind_remarks, :string

    field :ind_project, :string

    field :ind_type, :string

    field :ind_um, :string

    field :ind_um_conv, :decimal

    field :ind_mod_date, Conduit.QAD.Types.Date

    field :ind_userid, :string

    field :ind_cmtindx, :integer

    field :ind_user1, :string

    field :ind_user2, :string

    field :ind__chr01, :string

    field :ind__chr02, :string

    field :ind__chr03, :string

    field :ind__chr04, :string

    field :ind__chr05, :string

    field :ind__dte01, Conduit.QAD.Types.Date

    field :ind__dte02, Conduit.QAD.Types.Date

    field :ind__dec01, :decimal

    field :ind__dec02, :decimal

    field :ind__log01, Conduit.QAD.Types.Bool

    field :ind_domain, :string

    field :oid_ind_det, :decimal, primary_key: true

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
