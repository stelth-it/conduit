defmodule Elixir.Conduit.QAD.Table.Fn_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fn_mstr" do
    field :fn_account_eng, Conduit.QAD.Types.Bool

    field :fn_ca_desc, :string

    field :fn_ca_int_type, :string

    field :fn_ca_pri, :integer

    field :fn_ca_problem, :string

    field :fn_ca_que, :string

    field :fn_ca_severity, :string

    field :fn_ca_status, :string

    field :fn_ca_type, :string

    field :fn_cmtindx, :integer

    field :fn_combine, Conduit.QAD.Types.Bool

    field :fn_comb_date, Conduit.QAD.Types.Date

    field :fn_complete, Conduit.QAD.Types.Bool

    field :fn_comp_date, Conduit.QAD.Types.Date

    field :fn_copy_eco_cmt, Conduit.QAD.Types.Bool

    field :fn_desc, :string

    field :fn_eff_date, Conduit.QAD.Types.Date

    field :fn_ent_date, Conduit.QAD.Types.Date

    field :fn_es_nbr, :string

    field :fn_from_eu_nbr, :string

    field :fn_from_part, :string

    field :fn_from_serial, :string

    field :fn_fr_ship_date, Conduit.QAD.Types.Date

    field :fn_generated, Conduit.QAD.Types.Bool

    field :fn_mod_date, Conduit.QAD.Types.Date

    field :fn_nbr, :string

    field :fn_to_eu_nbr, :string

    field :fn_to_part, :string

    field :fn_to_serial, :string

    field :fn_to_ship_date, Conduit.QAD.Types.Date

    field :fn_mod_userid, :string

    field :fn_ent_userid, :string

    field :fn_document, :string

    field :fn_model, :string

    field :fn_user1, :string

    field :fn_user2, :string

    field :fn__chr01, :string

    field :fn__chr02, :string

    field :fn__chr03, :string

    field :fn__chr04, :string

    field :fn__dec01, :decimal

    field :fn__dec02, :decimal

    field :fn__dec03, :decimal

    field :fn__dte01, Conduit.QAD.Types.Date

    field :fn__dte02, Conduit.QAD.Types.Date

    field :fn__dte03, Conduit.QAD.Types.Date

    field :fn__log01, Conduit.QAD.Types.Bool

    field :fn__log02, Conduit.QAD.Types.Bool

    field :fn__log03, Conduit.QAD.Types.Bool

    field :fn__qadc01, :string

    field :fn__qadc02, :string

    field :fn__qadc03, :string

    field :fn__qadc04, :string

    field :fn__qadt01, Conduit.QAD.Types.Date

    field :fn__qadt02, Conduit.QAD.Types.Date

    field :fn__qadt03, Conduit.QAD.Types.Date

    field :fn__qade01, :decimal

    field :fn__qade02, :decimal

    field :fn__qade03, :decimal

    field :fn__qadl01, Conduit.QAD.Types.Bool

    field :fn_top_level, Conduit.QAD.Types.Bool

    field :fn__qadl03, Conduit.QAD.Types.Bool

    field :fn_ca_opn_date, Conduit.QAD.Types.Date

    field :fn_copy_cmmts, Conduit.QAD.Types.Bool

    field :fn__qadl04, Conduit.QAD.Types.Bool

    field :fn_domain, :string

    field :oid_fn_mstr, :decimal, primary_key: true

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
