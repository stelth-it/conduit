defmodule Elixir.Conduit.QAD.Table.Pi_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pi_mstr" do
    field :pi_list, :string

    field :pi_desc, :string

    field :pi_cs_code, :string

    field :pi_part_code, :string

    field :pi_start, Conduit.QAD.Types.Date

    field :pi_expire, Conduit.QAD.Types.Date

    field :pi_comb_type, :string

    field :pi_amt_type, :string

    field :pi_break_cat, :string

    field :pi_um, :string

    field :pi_curr, :string

    field :pi_qty_type, :string

    field :pi_manual, Conduit.QAD.Types.Bool

    field :pi_max_qty, :decimal

    field :pi_cost_set, :string

    field :pi_disc_acct, :string

    field :pi_disc_sub, :string

    field :pi_disc_proj, :string

    field :pi_list_id, :string

    field :pi_confg_disc, Conduit.QAD.Types.Bool

    field :pi_min_net, :decimal

    field :pi_max_ord, :integer

    field :pi_list_price, :decimal

    field :pi_min_price, :decimal

    field :pi_max_price, :decimal

    field :pi_userid, :string

    field :pi_mod_date, Conduit.QAD.Types.Date

    field :pi_cs_type, :string

    field :pi_part_type, :string

    field :pi_disc_cc, :string

    field :pi_terms, :string

    field :pi_cmtindx, :integer

    field :pi_srch_type, :integer

    field :pi_print, Conduit.QAD.Types.Bool

    field :pi_accr_acct, :string

    field :pi_accr_cc, :string

    field :pi_accr_proj, :string

    field :pi_accr_sub, :string

    field :pi_disc_seq, :decimal

    field :pi_user1, :string

    field :pi_user2, :string

    field :pi__qadc01, :string

    field :pi__qadd01, :decimal

    field :pi__dte01, Conduit.QAD.Types.Date

    field :pi__dte02, Conduit.QAD.Types.Date

    field :pi__dec01, :decimal

    field :pi__dec02, :decimal

    field :pi__log01, Conduit.QAD.Types.Bool

    field :pi__chr01, :string

    field :pi__chr02, :string

    field :pi__chr03, :string

    field :pi__chr04, :string

    field :pi__chr05, :string

    field :pi__chr06, :string

    field :pi__chr07, :string

    field :pi__chr08, :string

    field :pi__chr09, :string

    field :pi__chr10, :string

    field :pi_extrec, Conduit.QAD.Types.Bool

    field :pi_promo1, :string

    field :pi_promo2, :string

    field :pi_promo3, :string

    field :pi_promo4, :string

    field :pi_pig_code, :string

    field :pi_domain, :string

    field :oid_pi_mstr, :decimal, primary_key: true

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
