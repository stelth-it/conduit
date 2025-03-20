defmodule Elixir.Conduit.QAD.Table.Pjd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pjd_det" do
    field :pjd_nbr, :string

    field :pjd_sub_nbr, :integer

    field :pjd_budget_type, :integer

    field :pjd_ca_int_type, :string

    field :pjd_cmtindx, :integer

    field :pjd_comm_pct, {:array, :decimal}

    field :pjd_cr_terms, :string

    field :pjd_desc, :string

    field :pjd_disc_pct, :decimal

    field :pjd_end_date, Conduit.QAD.Types.Date

    field :pjd_end_orig, Conduit.QAD.Types.Date

    field :pjd_eng_nbr, :string

    field :pjd_eu_nbr, :string

    field :pjd_global_inv, Conduit.QAD.Types.Bool

    field :pjd_inv_det, Conduit.QAD.Types.Bool

    field :pjd_inv_det_pr, Conduit.QAD.Types.Bool

    field :pjd_inv_lvl, Conduit.QAD.Types.Bool

    field :pjd_list_pr, :decimal

    field :pjd_loc, :string

    field :pjd_pjt_code, :string

    field :pjd_pr_list, :string

    field :pjd_prepaid, :decimal

    field :pjd_prep_tax, :decimal

    field :pjd_prod_line, :string

    field :pjd_site, :string

    field :pjd_slspsn, {:array, :string}

    field :pjd_st_date, Conduit.QAD.Types.Date

    field :pjd_st_orig, Conduit.QAD.Types.Date

    field :pjd_status, :string

    field :pjd_total_price, :decimal

    field :pjd_variation, Conduit.QAD.Types.Bool

    field :pjd_mod_date, Conduit.QAD.Types.Date

    field :pjd_mod_userid, :string

    field :pjd_user1, :string

    field :pjd_user2, :string

    field :pjd__qadc01, :string

    field :pjd__qadc02, :string

    field :pjd__qadd01, :decimal

    field :pjd__qadi01, :integer

    field :pjd__qadl01, Conduit.QAD.Types.Bool

    field :pjd__qadt01, Conduit.QAD.Types.Date

    field :pjd_domain, :string

    field :oid_pjd_det, :decimal, primary_key: true

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
