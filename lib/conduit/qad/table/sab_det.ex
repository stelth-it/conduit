defmodule Elixir.Conduit.QAD.Table.Sab_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sab_det" do
    field :sab_nbr, :string

    field :sab_prefix, :string

    field :sab_line, :integer

    field :sab_billed_date, Conduit.QAD.Types.Date

    field :sab_billed_time, :string

    field :sab_line_type, :string

    field :sab_eu_nbr, :string

    field :sab_so_nbr, :string

    field :sab_sod_line, :integer

    field :sab_cust, :string

    field :sab_bill_to, :string

    field :sab_amt_type, :string

    field :sab_cycle, :string

    field :sab_desc, :string

    field :sab_end_cover, Conduit.QAD.Types.Date

    field :sab_end_date, Conduit.QAD.Types.Date

    field :sab_ext_price, :decimal

    field :sab_for, :string

    field :sab_list_pr, :decimal

    field :sab_lstcover, Conduit.QAD.Types.Date

    field :sab_sv_code, :string

    field :sab_price, :decimal

    field :sab_qty_chg, :decimal

    field :sab_qty_per, :decimal

    field :sab_ref, :integer

    field :sab_serial, :string

    field :sab_st_cover, Conduit.QAD.Types.Date

    field :sab_st_date, Conduit.QAD.Types.Date

    field :sab_taxable, Conduit.QAD.Types.Bool

    field :sab_taxc, :string

    field :sab_tax_env, :string

    field :sab_tax_in, Conduit.QAD.Types.Bool

    field :sab_tax_usage, :string

    field :sab_line_seq, :integer

    field :sab_curr, :string

    field :sab_ui_line, :integer

    field :sab_user1, :string

    field :sab_user2, :string

    field :sab_userd01, :decimal

    field :sab_useri01, :integer

    field :sab_userl01, Conduit.QAD.Types.Bool

    field :sab_usert01, Conduit.QAD.Types.Date

    field :sab__qadc01, :string

    field :sab__qadd01, :decimal

    field :sab__qadi01, :integer

    field :sab__qadl01, Conduit.QAD.Types.Bool

    field :sab__qadt01, Conduit.QAD.Types.Date

    field :sab_mod_userid, :string

    field :sab_mod_date, Conduit.QAD.Types.Date

    field :sab_ex_rate, :decimal

    field :sab_ex_rate2, :decimal

    field :sab_ex_ratetype, :string

    field :sab_exru_seq, :integer

    field :sab__qadc02, :string

    field :sab_domain, :string

    field :oid_sab_det, :decimal, primary_key: true

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
