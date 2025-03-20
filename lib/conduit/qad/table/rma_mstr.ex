defmodule Elixir.Conduit.QAD.Table.Rma_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rma_mstr" do
    field :rma_nbr, :string

    field :rma_cust_ven, :string

    field :rma_ship, :string

    field :rma_ord_date, Conduit.QAD.Types.Date

    field :rma_req_date, Conduit.QAD.Types.Date

    field :rma_exp_date, Conduit.QAD.Types.Date

    field :rma_prt_rec, Conduit.QAD.Types.Bool

    field :rma_pr_list, :string

    field :rma_source, :string

    field :rma_stat, :string

    field :rma_shipdate, Conduit.QAD.Types.Date

    field :rma_cmtindx, :integer

    field :rma_user1, :string

    field :rma_user2, :string

    field :rma_type, :string

    field :rma__chr01, :string

    field :rma__chr02, :string

    field :rma__chr03, :string

    field :rma__chr04, :string

    field :rma__chr05, :string

    field :rma__chr06, :string

    field :rma__chr07, :string

    field :rma__chr08, :string

    field :rma__chr09, :string

    field :rma__chr10, :string

    field :rma__dte01, Conduit.QAD.Types.Date

    field :rma__dte02, Conduit.QAD.Types.Date

    field :rma__dec01, :decimal

    field :rma__dec02, :decimal

    field :rma__log01, Conduit.QAD.Types.Bool

    field :rma_complete, Conduit.QAD.Types.Bool

    field :rma_prefix, :string

    field :rma_crprlist, :string

    field :rma_contract, :string

    field :rma_ctype, :string

    field :rma_ca_nbr, :string

    field :rma_loc_iss, :string

    field :rma_site_rec, :string

    field :rma_site_iss, :string

    field :rma_loc_rec, :string

    field :rma_bill_to, :string

    field :rma__qadc04, :string

    field :rma__qadd03, :decimal

    field :rma_taxc, :string

    field :rma_taxable, Conduit.QAD.Types.Bool

    field :rma_eng_code, :string

    field :rma_cstmlist, :string

    field :rma_enduser, :string

    field :rma__qadc01, :string

    field :rma__qadc02, :string

    field :rma__qadc03, :string

    field :rma__qadt01, Conduit.QAD.Types.Date

    field :rma__qadt02, Conduit.QAD.Types.Date

    field :rma__qadt03, Conduit.QAD.Types.Date

    field :rma__qadd01, :decimal

    field :rma__qadd02, :decimal

    field :rma__qadi01, :integer

    field :rma__qadi02, :integer

    field :rma__qadl01, Conduit.QAD.Types.Bool

    field :rma__qadl02, Conduit.QAD.Types.Bool

    field :rma_mod_userid, :string

    field :rma_mod_date, Conduit.QAD.Types.Date

    field :rma_rstk_pct, :decimal

    field :rma__qadd04, :decimal

    field :rma__qadc05, :string

    field :rma__qadi03, :integer

    field :rma_domain, :string

    field :oid_rma_mstr, :decimal, primary_key: true

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
