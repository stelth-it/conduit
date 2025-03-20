defmodule Elixir.Conduit.QAD.Table.Fnh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fnh_hist" do
    field :fnh_account_eng, Conduit.QAD.Types.Bool

    field :fnh_ca_desc, :string

    field :fnh_ca_int_type, :string

    field :fnh_ca_pri, :integer

    field :fnh_ca_problem, :string

    field :fnh_ca_que, :string

    field :fnh_ca_severity, :string

    field :fnh_ca_status, :string

    field :fnh_ca_type, :string

    field :fnh_cmtindx, :integer

    field :fnh_combine, Conduit.QAD.Types.Bool

    field :fnh_complete, Conduit.QAD.Types.Bool

    field :fnh_comp_date, Conduit.QAD.Types.Date

    field :fnh_copy_eco_cmt, Conduit.QAD.Types.Bool

    field :fnh_desc, :string

    field :fnh_eff_date, Conduit.QAD.Types.Date

    field :fnh_ent_date, Conduit.QAD.Types.Date

    field :fnh_esc_nbr, :string

    field :fnh_from_eu_nbr, :string

    field :fnh_from_part, :string

    field :fnh_from_serial, :string

    field :fnh_fr_ship_date, Conduit.QAD.Types.Date

    field :fnh_generated, Conduit.QAD.Types.Bool

    field :fnh_mod_date, Conduit.QAD.Types.Date

    field :fnh_nbr, :string

    field :fnh_to_eu_nbr, :string

    field :fnh_to_part, :string

    field :fnh_to_serial, :string

    field :fnh_to_ship_date, Conduit.QAD.Types.Date

    field :fnh__chr01, :string

    field :fnh__chr02, :string

    field :fnh__chr03, :string

    field :fnh__chr04, :string

    field :fnh__dec01, :decimal

    field :fnh__dec02, :decimal

    field :fnh__dec03, :decimal

    field :fnh__dte01, Conduit.QAD.Types.Date

    field :fnh__dte02, Conduit.QAD.Types.Date

    field :fnh__dte03, Conduit.QAD.Types.Date

    field :fnh__log01, Conduit.QAD.Types.Bool

    field :fnh__log02, Conduit.QAD.Types.Bool

    field :fnh__log03, Conduit.QAD.Types.Bool

    field :fnh__qadc01, :string

    field :fnh__qadc02, :string

    field :fnh__qadc03, :string

    field :fnh__qadc04, :string

    field :fnh__qadt01, Conduit.QAD.Types.Date

    field :fnh__qadt02, Conduit.QAD.Types.Date

    field :fnh__qadt03, Conduit.QAD.Types.Date

    field :fnh__qade01, :decimal

    field :fnh__qade02, :decimal

    field :fnh__qade03, :decimal

    field :fnh__qadl01, Conduit.QAD.Types.Bool

    field :fnh_top_level, Conduit.QAD.Types.Bool

    field :fnh__qadl03, Conduit.QAD.Types.Bool

    field :fnh_from_ca_nbr, :string

    field :fnh_to_ca_nbr, :string

    field :fnh_model, :string

    field :fnh_document, :string

    field :fnh_user1, :string

    field :fnh_user2, :string

    field :fnh_sequence, :integer

    field :fnh_mod_userid, :string

    field :fnh_ent_userid, :string

    field :fnh_ca_opn_date, Conduit.QAD.Types.Date

    field :fnh_copy_cmmts, Conduit.QAD.Types.Bool

    field :fnh__qadl04, Conduit.QAD.Types.Bool

    field :fnh_domain, :string

    field :oid_fnh_hist, :decimal, primary_key: true

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
