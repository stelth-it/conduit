defmodule Elixir.Conduit.QAD.Table.Mfsd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mfsd_det" do
    field :mfsd_userid, :string

    field :mfsd_eng_code, :string

    field :mfsd_eng_id, :string

    field :mfsd_site, :string

    field :mfsd_loc, :string

    field :mfsd_svc_group1, :string

    field :mfsd_svc_group2, :string

    field :mfsd_sync_auth, Conduit.QAD.Types.Bool

    field :mfsd_call_header, Conduit.QAD.Types.Bool

    field :mfsd_sa_pre, :string

    field :mfsd_nonexisting_user, Conduit.QAD.Types.Bool

    field :mfsd_nonexisting_items, Conduit.QAD.Types.Bool

    field :mfsd_prntsyscmnt, Conduit.QAD.Types.Bool

    field :mfsd_client_doc_ids, Conduit.QAD.Types.Bool

    field :mfsd_ca_mo_pre, :string

    field :mfsd_mod_userid, :string

    field :mfsd_mod_date, Conduit.QAD.Types.Date

    field :mfsd_user1, :string

    field :mfsd_user2, :string

    field :mfsd__qadc01, :string

    field :mfsd__qadc02, :string

    field :mfsd_userc03, :string

    field :mfsd_userc04, :string

    field :mfsd_userc05, :string

    field :mfsd_userd01, :decimal

    field :mfsd_userd02, :decimal

    field :mfsd_userl01, Conduit.QAD.Types.Bool

    field :mfsd_userl02, Conduit.QAD.Types.Bool

    field :mfsd_usert01, Conduit.QAD.Types.Date

    field :mfsd_usert02, Conduit.QAD.Types.Date

    field :mfsd_domain, :string

    field :oid_mfsd_det, :decimal, primary_key: true

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
