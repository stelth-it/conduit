defmodule Elixir.Conduit.QAD.Table.Pih_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pih_hist" do
    field :pih_doc_type, :integer

    field :pih_nbr, :string

    field :pih_line, :integer

    field :pih_feature, :string

    field :pih_option, :string

    field :pih_disc_acct, :string

    field :pih_disc_cc, :string

    field :pih_disc_sub, :string

    field :pih_disc_proj, :string

    field :pih_qty, :decimal

    field :pih_amt, :decimal

    field :pih_disc_amt, :decimal

    field :pih_break_cat, :string

    field :pih_pid_qty, :decimal

    field :pih_amt_type, :string

    field :pih_cr_terms, :string

    field :pih_fr_list, :string

    field :pih_fr_terms, :string

    field :pih_userid, :string

    field :pih_mod_date, Conduit.QAD.Types.Date

    field :pih_list_id, :string

    field :pih_source, :string

    field :pih_min_net, :decimal

    field :pih_qty_type, :string

    field :pih_um, :string

    field :pih_time, :integer

    field :pih_list, :string

    field :pih_comb_type, :string

    field :pih_confg_disc, Conduit.QAD.Types.Bool

    field :pih_parent, :string

    field :pih_accr_acct, :string

    field :pih_accr_cc, :string

    field :pih_accr_proj, :string

    field :pih_accr_sub, :string

    field :pih_disc_seq, :decimal

    field :pih_print, Conduit.QAD.Types.Bool

    field :pih_user1, :string

    field :pih_user2, :string

    field :pih__qadc01, :string

    field :pih__qadd01, :decimal

    field :pih__dte01, Conduit.QAD.Types.Date

    field :pih__dte02, Conduit.QAD.Types.Date

    field :pih__dec01, :decimal

    field :pih__dec02, :decimal

    field :pih__log01, Conduit.QAD.Types.Bool

    field :pih__chr01, :string

    field :pih__chr02, :string

    field :pih__chr03, :string

    field :pih__chr04, :string

    field :pih__chr05, :string

    field :pih__chr06, :string

    field :pih__chr07, :string

    field :pih__chr08, :string

    field :pih__chr09, :string

    field :pih__chr10, :string

    field :pih_promo1, :string

    field :pih_promo2, :string

    field :pih_bonus_line, :integer

    field :pih_promo3, :string

    field :pih_promo4, :string

    field :pih_pig_code, :string

    field :pih_domain, :string

    field :oid_pih_hist, :decimal, primary_key: true

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
