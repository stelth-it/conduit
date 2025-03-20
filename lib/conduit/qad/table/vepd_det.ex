defmodule Elixir.Conduit.QAD.Table.Vepd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vepd_det" do
    field :vepd_vendor, :string

    field :vepd_vendor_source, :string

    field :vepd_category, :string

    field :vepd_vep_tran_date, Conduit.QAD.Types.Date

    field :vepd_vep_tran_id, :integer

    field :vepd_seq_nbr, :integer

    field :vepd_event, :string

    field :vepd_weight_code, :string

    field :vepd_cmtindx, :integer

    field :vepd_event_qty, :decimal

    field :vepd_reason_code, :string

    field :vepd_doc_nbr, :string

    field :vepd_temp_missed_flag, Conduit.QAD.Types.Bool

    field :vepd_tran_date, Conduit.QAD.Types.Date

    field :vepd_tran_id, :integer

    field :vepd_mod_userid, :string

    field :vepd_mod_date, Conduit.QAD.Types.Date

    field :vepd_user1, :string

    field :vepd_user2, :string

    field :vepd_user3, :string

    field :vepd_user4, :string

    field :vepd__qadc01, :string

    field :vepd__qadc02, :string

    field :vepd__qadc03, :string

    field :vepd__qadc04, :string

    field :vepd__qadd01, :decimal

    field :vepd__qadd02, :decimal

    field :vepd__qadl01, Conduit.QAD.Types.Bool

    field :vepd__qadl02, Conduit.QAD.Types.Bool

    field :vepd__qadt01, Conduit.QAD.Types.Date

    field :vepd__qadt02, Conduit.QAD.Types.Date

    field :vepd__qadi01, :integer

    field :vepd__qadi02, :integer

    field :vepd_site, :string

    field :vepd_domain, :string

    field :oid_vepd_det, :decimal, primary_key: true

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
