defmodule Elixir.Conduit.QAD.Table.Txr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_txr_mstr" do
    field :txr_active, Conduit.QAD.Types.Bool

    field :txr_ap_page_num, :integer

    field :txr_ar_page_num, :integer

    field :txr_co_seqid, :string

    field :txr_cr_seqid, :string

    field :txr_ec_report, Conduit.QAD.Types.Bool

    field :txr_inv_seqid, :string

    field :txr_mod_date, Conduit.QAD.Types.Date

    field :txr_mod_userid, :string

    field :txr_register, :string

    field :txr_site, :string

    field :txr_vo_seqid, :string

    field :txr_user1, :string

    field :txr_user2, :string

    field :txr_userd01, :decimal

    field :txr_useri01, :integer

    field :txr_userl01, Conduit.QAD.Types.Bool

    field :txr_usert01, Conduit.QAD.Types.Date

    field :txr__qadc01, :string

    field :txr__qadc02, :string

    field :txr__qadd01, :decimal

    field :txr__qadi01, :integer

    field :txr__qadl01, Conduit.QAD.Types.Bool

    field :txr__qadt01, Conduit.QAD.Types.Date

    field :txr_domain, :string

    field :oid_txr_mstr, :decimal, primary_key: true

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
