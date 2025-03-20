defmodule Elixir.Conduit.QAD.Table.Ifs_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ifs_mstr" do
    field :ifs_app_id, :string

    field :ifs_grp_id, :integer

    field :ifs_doc_err_cnt, :integer

    field :ifs_doc_tot_cnt, :integer

    field :ifs__qadi03, :integer

    field :ifs__qadi04, :integer

    field :ifs_lst_doc_proc, :integer

    field :ifs_mod_date, Conduit.QAD.Types.Date

    field :ifs_userid, :string

    field :ifs_sess_hndl, :string

    field :ifs_sess_id, :integer

    field :ifs_sess_stat, :string

    field :ifs_sess_typ, :string

    field :ifs_start_date, Conduit.QAD.Types.Date

    field :ifs_start_time, :string

    field :ifs_start_userid, :string

    field :ifs_unit_wrk_typ, :string

    field :ifs_user1, :string

    field :ifs_user2, :string

    field :ifs__dec01, :decimal

    field :ifs__dec02, :decimal

    field :ifs__int01, :integer

    field :ifs__int02, :integer

    field :ifs__log01, Conduit.QAD.Types.Bool

    field :ifs__log02, Conduit.QAD.Types.Bool

    field :ifs__dte01, Conduit.QAD.Types.Date

    field :ifs__dte02, Conduit.QAD.Types.Date

    field :ifs__qadc01, :string

    field :ifs__qadc02, :string

    field :ifs__qadc03, :string

    field :ifs__qadc04, :string

    field :ifs__qadd01, :decimal

    field :ifs__qadd02, :decimal

    field :ifs__qadi01, :integer

    field :ifs__qadi02, :integer

    field :ifs__qadl01, Conduit.QAD.Types.Bool

    field :ifs__qadl02, Conduit.QAD.Types.Bool

    field :ifs__qadt01, Conduit.QAD.Types.Date

    field :ifs__qadt02, Conduit.QAD.Types.Date

    field :ifs_filename, :string

    field :ifs_domain, :string

    field :oid_ifs_mstr, :decimal, primary_key: true

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
