defmodule Elixir.Conduit.QAD.Table.Rdf_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rdf_mstr" do
    field :rdf_srtn_site, :string

    field :rdf_spare_loc, :string

    field :rdf_spare_site, :string

    field :rdf_rtn_loc, :string

    field :rdf_rtn_site, :string

    field :rdf_prod_line, :string

    field :rdf_group, :string

    field :rdf_desc, :string

    field :rdf_part, :string

    field :rdf_rts_loc, :string

    field :rdf_rts_site, :string

    field :rdf_srtn_loc, :string

    field :rdf_user1, :string

    field :rdf_user2, :string

    field :rdf_scrap_site, :string

    field :rdf_scrap_loc, :string

    field :rdf_area, :string

    field :rdf_addr, :string

    field :rdf_ca_type, :string

    field :rdf_es_nbr, :string

    field :rdf_notify, Conduit.QAD.Types.Bool

    field :rdf_fax, :string

    field :rdf_svc_group, :string

    field :rdf_email, :string

    field :rdf_transit_loc, :string

    field :rdf_transit_site, :string

    field :rdf_ship_time, :decimal

    field :rdf_ca_int_type, :string

    field :rdf_repair_days, :decimal

    field :rdf_bom_code, :string

    field :rdf_routing, :string

    field :rdf_rrts_loc, :string

    field :rdf_rrts_site, :string

    field :rdf_rep_site, :string

    field :rdf_rep_loc, :string

    field :rdf__chr01, :string

    field :rdf__chr02, :string

    field :rdf__chr03, :string

    field :rdf__chr04, :string

    field :rdf__chr05, :string

    field :rdf__dec01, :decimal

    field :rdf__dec02, :decimal

    field :rdf__dte01, Conduit.QAD.Types.Date

    field :rdf__dte02, Conduit.QAD.Types.Date

    field :rdf__log01, Conduit.QAD.Types.Bool

    field :rdf__log02, Conduit.QAD.Types.Bool

    field :rdf__qadc01, :string

    field :rdf__qadc02, :string

    field :rdf__qadc03, :string

    field :rdf__qadt01, Conduit.QAD.Types.Date

    field :rdf__qade01, :decimal

    field :rdf__qade02, :decimal

    field :rdf__qadl01, Conduit.QAD.Types.Bool

    field :rdf__qadl02, Conduit.QAD.Types.Bool

    field :rdf_mod_date, Conduit.QAD.Types.Date

    field :rdf_mod_userid, :string

    field :rdf_domain, :string

    field :oid_rdf_mstr, :decimal, primary_key: true

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
