defmodule Elixir.Conduit.QAD.Table.Ecm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecm_mstr" do
    field :ecm_nbr, :string

    field :ecm_date, Conduit.QAD.Types.Date

    field :ecm_init, :string

    field :ecm_cmmt, {:array, :string}

    field :ecm__qad01, :decimal

    field :ecm__qad02, :string

    field :ecm_user1, :string

    field :ecm_user2, :string

    field :ecm_cmtindx, :integer

    field :ecm_mod_date, Conduit.QAD.Types.Date

    field :ecm_userid, :string

    field :ecm_eff_date, Conduit.QAD.Types.Date

    field :ecm_man_date, Conduit.QAD.Types.Date

    field :ecm_sub_date, Conduit.QAD.Types.Date

    field :ecm_end_date, Conduit.QAD.Types.Date

    field :ecm_rel_date, Conduit.QAD.Types.Date

    field :ecm_title, :string

    field :ecm_approval, :string

    field :ecm_distr, :string

    field :ecm_replan, Conduit.QAD.Types.Bool

    field :ecm_type, :string

    field :ecm_status, :string

    field :ecm_nbr_fr, :string

    field :ecm_nbr_to, :string

    field :ecm_exp_cost, :decimal

    field :ecm_name, :string

    field :ecm_assign, :string

    field :ecm_open_date, Conduit.QAD.Types.Date

    field :ecm_close_date, Conduit.QAD.Types.Date

    field :ecm_ecr_dspn, :string

    field :ecm__qad03, Conduit.QAD.Types.Bool

    field :ecm__qad04, Conduit.QAD.Types.Date

    field :ecm__qad05, :decimal

    field :ecm__qad06, :string

    field :ecm__qad07, :string

    field :ecm_secure_text, :string

    field :ecm_secure_item, :string

    field :ecm_secure_stct, :string

    field :ecm_secure_routing, :string

    field :ecm_secure_admn, :string

    field :ecm_seqrev_off, Conduit.QAD.Types.Bool

    field :ecm_appr_date, Conduit.QAD.Types.Date

    field :ecm_selected_eff, Conduit.QAD.Types.Date

    field :ecm_batched, Conduit.QAD.Types.Bool

    field :ecm_reprocess, Conduit.QAD.Types.Bool

    field :ecm_doc_type, :string

    field :ecm_domain, :string

    field :oid_ecm_mstr, :decimal, primary_key: true

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
