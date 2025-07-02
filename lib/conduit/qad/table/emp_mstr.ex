defmodule Elixir.Conduit.QAD.Table.Emp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_emp_mstr" do
    field :emp_addr, :string

    field :emp_lname, :string

    field :emp_fname, :string

    field :emp_line1, :string

    field :emp_line2, :string

    field :emp_city, :string

    field :emp_state, :string

    field :emp_zip, :string

    field :emp_country, :string

    field :emp_phone, :string

    field :emp_bs_phone, :string

    field :emp_ext, :string

    field :emp_ssn, :string

    field :emp_birthday, Conduit.QAD.Types.Date

    field :emp_emp_date, Conduit.QAD.Types.Date

    field :emp_trm_date, Conduit.QAD.Types.Date

    field :emp_status, :string

    field :emp_freq, :string

    field :emp_pay_type, :string

    field :emp_pay_rate, :decimal

    field :emp_marital, :string

    field :emp_exempt, :integer

    field :emp_wk_loc, :string

    field :emp__qad01, :string

    field :emp__qad02, :string

    field :emp_project, :string

    field :emp_dept, :string

    field :emp_units, :decimal

    field :emp_sick_hrs, :decimal

    field :emp_vac_hrs, :decimal

    field :emp_title, :string

    field :emp_wc_class, :string

    field :emp_last_pay, :decimal

    field :emp_last_dt, Conduit.QAD.Types.Date

    field :emp_line3, :string

    field :emp_user1, :string

    field :emp_user2, :string

    field :emp_user3, :string

    field :emp_user4, :decimal

    field :emp_user5, :decimal

    field :emp_user6, Conduit.QAD.Types.Date

    field :emp_bank, :string

    field :emp_ad_bank, :string

    field :emp_ad_acc1, :string

    field :emp_ad_amt1, :decimal

    field :emp_ad_pct1, :decimal

    field :emp_ad_acc2, :string

    field :emp_ad_amt2, :decimal

    field :emp_ad_pct2, :decimal

    field :emp__chr01, :string

    field :emp__chr02, :string

    field :emp__chr03, :string

    field :emp__chr04, :string

    field :emp__chr05, :string

    field :emp__dte01, Conduit.QAD.Types.Date

    field :emp__dte02, Conduit.QAD.Types.Date

    field :emp__dte03, Conduit.QAD.Types.Date

    field :emp__dte04, Conduit.QAD.Types.Date

    field :emp__dte05, Conduit.QAD.Types.Date

    field :emp__dec01, :decimal

    field :emp__dec02, :decimal

    field :emp__log01, Conduit.QAD.Types.Bool

    field :emp__log02, Conduit.QAD.Types.Bool

    field :emp_mod_date, Conduit.QAD.Types.Date

    field :emp_userid, :string

    field :emp_ad_bank2, :string

    field :emp_transit1, :string

    field :emp_transit2, :string

    field :emp_ad_type1, :string

    field :emp_ad_type2, :string

    field :emp_shift, :string

    field :emp_ctry, :string

    field :emp_domain, :string

    field :oid_emp_mstr, :decimal, primary_key: true

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
