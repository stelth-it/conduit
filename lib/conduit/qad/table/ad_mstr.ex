defmodule Elixir.Conduit.QAD.Table.Ad_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ad_mstr" do
    field :ad_addr, :string

    field :ad_name, :string

    field :ad_line1, :string

    field :ad_line2, :string

    field :ad_city, :string

    field :ad_state, :string

    field :ad_zip, :string

    field :ad_type, :string

    field :ad_attn, :string

    field :ad_phone, :string

    field :ad_ext, :string

    field :ad_ref, :string

    field :ad_sort, :string

    field :ad_country, :string

    field :ad_attn2, :string

    field :ad_phone2, :string

    field :ad_ext2, :string

    field :ad_fax, :string

    field :ad_fax2, :string

    field :ad_line3, :string

    field :ad_user1, :string

    field :ad_user2, :string

    field :ad_lang, :string

    field :ad_pst_id, :string

    field :ad_date, Conduit.QAD.Types.Date

    field :ad_county, :string

    field :ad_temp, Conduit.QAD.Types.Bool

    field :ad_bk_acct1, :string

    field :ad_bk_acct2, :string

    field :ad_format, :integer

    field :ad_vat_reg, :string

    field :ad_coc_reg, :string

    field :ad_gst_id, :string

    field :ad_tax_type, :string

    field :ad_taxc, :string

    field :ad_taxable, Conduit.QAD.Types.Bool

    field :ad_tax_in, Conduit.QAD.Types.Bool

    field :ad_edi_tpid, :string

    field :ad_timezone, :string

    field :ad_mod_date, Conduit.QAD.Types.Date

    field :ad_userid, :string

    field :ad_edi_id, :string

    field :ad_edi_ctrl, {:array, :string}

    field :ad_conrep, :string

    field :ad_barlbl_prt, :string

    field :ad_barlbl_val, :string

    field :ad_calendar, :string

    field :ad_edi_std, :string

    field :ad_edi_level, :string

    field :ad__qad01, :string

    field :ad__qad02, :string

    field :ad__qad03, :string

    field :ad__qad04, :string

    field :ad__qad05, :string

    field :ad__chr01, :string

    field :ad__chr02, :string

    field :ad__chr03, :string

    field :ad__chr04, :string

    field :ad__chr05, :string

    field :ad_tp_loc_code, :string

    field :ad_ctry, :string

    field :ad_tax_zone, :string

    field :ad_tax_usage, :string

    field :ad_misc1_id, :string

    field :ad_misc2_id, :string

    field :ad_misc3_id, :string

    field :ad_wk_offset, :integer

    field :ad_inv_mthd, :string

    field :ad_sch_mthd, :string

    field :ad_po_mthd, :string

    field :ad_asn_data, :string

    field :ad_intr_division, :string

    field :ad_tax_report, Conduit.QAD.Types.Bool

    field :ad_name_control, :string

    field :ad_last_file, Conduit.QAD.Types.Bool

    field :ad_domain, :string

    field :oid_ad_mstr, :decimal, primary_key: true

    field :ad_email, :string

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
