defmodule Elixir.Conduit.QAD.Table.Sro_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sro_mstr" do
    field :sro_nbr, :string

    field :sro_cust, :string

    field :sro_ship, :string

    field :sro_taken, :string

    field :sro_assign, :string

    field :sro_ent_date, Conduit.QAD.Types.Date

    field :sro_cls_date, Conduit.QAD.Types.Date

    field :sro_type, :string

    field :sro_status, :string

    field :sro_cr_terms, :string

    field :sro_shipvia, :string

    field :sro_po, :string

    field :sro_rga, :string

    field :sro_author, :string

    field :sro_print_rg, Conduit.QAD.Types.Bool

    field :sro_print_pl, Conduit.QAD.Types.Bool

    field :sro_dspstn, :string

    field :sro_part, :string

    field :sro_desc, :string

    field :sro_serial, :string

    field :sro_rev, :string

    field :sro_wrrnty, Conduit.QAD.Types.Bool

    field :sro_failure1, :string

    field :sro_failure2, :string

    field :sro_failure3, :string

    field :sro_failure4, :string

    field :sro_failure5, :string

    field :sro_repair1, :string

    field :sro_repair2, :string

    field :sro_repair3, :string

    field :sro_repair4, :string

    field :sro_repair5, :string

    field :sro_cmmt, {:array, :string}

    field :sro_frt, :decimal

    field :sro_serv_chg, :decimal

    field :sro_disc_pct, :decimal

    field :sro_spec_chg, :decimal

    field :sro_tax_pct, {:array, :decimal}

    field :sro_prepaid, :decimal

    field :sro_to_inv, Conduit.QAD.Types.Bool

    field :sro_invoiced, Conduit.QAD.Types.Bool

    field :sro__qadc05, :string

    field :sro__qadc06, :string

    field :sro_inv_date, Conduit.QAD.Types.Date

    field :sro_shp_date, Conduit.QAD.Types.Date

    field :sro_closed, Conduit.QAD.Types.Bool

    field :sro_due_date, Conduit.QAD.Types.Date

    field :sro_user1, :string

    field :sro_user2, :string

    field :sro_qty, :decimal

    field :sro_cmtindx, :integer

    field :sro__chr01, :string

    field :sro__chr02, :string

    field :sro__chr03, :string

    field :sro__chr04, :string

    field :sro__chr05, :string

    field :sro__dte01, Conduit.QAD.Types.Date

    field :sro__dte02, Conduit.QAD.Types.Date

    field :sro__dec01, :decimal

    field :sro__dec02, :decimal

    field :sro__log01, Conduit.QAD.Types.Bool

    field :sro_domain, :string

    field :oid_sro_mstr, :decimal, primary_key: true

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
