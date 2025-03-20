defmodule Elixir.Conduit.QAD.Table.Iph_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_iph_hist" do
    field :iph_inv_nbr, :string

    field :iph_nbr, :string

    field :iph_line, :integer

    field :iph_feature, :string

    field :iph_option, :string

    field :iph_disc_acct, :string

    field :iph_disc_cc, :string

    field :iph_disc_sub, :string

    field :iph_disc_proj, :string

    field :iph_qty, :decimal

    field :iph_amt, :decimal

    field :iph_disc_amt, :decimal

    field :iph_break_cat, :string

    field :iph_pid_qty, :decimal

    field :iph_amt_type, :string

    field :iph_cr_terms, :string

    field :iph_fr_list, :string

    field :iph_fr_terms, :string

    field :iph_userid, :string

    field :iph_mod_date, Conduit.QAD.Types.Date

    field :iph_list_id, :string

    field :iph_source, :string

    field :iph_min_net, :decimal

    field :iph_qty_type, :string

    field :iph_um, :string

    field :iph_time, :integer

    field :iph_list, :string

    field :iph_comb_type, :string

    field :iph_confg_disc, Conduit.QAD.Types.Bool

    field :iph_parent, :string

    field :iph_accr_acct, :string

    field :iph_accr_cc, :string

    field :iph_accr_proj, :string

    field :iph_accr_sub, :string

    field :iph_disc_seq, :decimal

    field :iph_print, Conduit.QAD.Types.Bool

    field :iph_user1, :string

    field :iph_user2, :string

    field :iph__qadc01, :string

    field :iph__qadd01, :decimal

    field :iph__dte01, Conduit.QAD.Types.Date

    field :iph__dte02, Conduit.QAD.Types.Date

    field :iph__dec01, :decimal

    field :iph__dec02, :decimal

    field :iph__log01, Conduit.QAD.Types.Bool

    field :iph__chr01, :string

    field :iph__chr02, :string

    field :iph__chr03, :string

    field :iph__chr04, :string

    field :iph__chr05, :string

    field :iph__chr06, :string

    field :iph__chr07, :string

    field :iph__chr08, :string

    field :iph__chr09, :string

    field :iph__chr10, :string

    field :iph_promo1, :string

    field :iph_promo2, :string

    field :iph_promo3, :string

    field :iph_promo4, :string

    field :iph_bonus_line, :integer

    field :iph_pig_code, :string

    field :iph_domain, :string

    field :oid_iph_hist, :decimal, primary_key: true

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
