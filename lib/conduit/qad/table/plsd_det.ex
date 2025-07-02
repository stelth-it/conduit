defmodule Elixir.Conduit.QAD.Table.Plsd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_plsd_det" do
    field :plsd_prodline, :string

    field :plsd_site, :string

    field :plsd_cmtype, :string

    field :plsd_channel, :string

    field :plsd_sls_acct, :string

    field :plsd_sls_cc, :string

    field :plsd_dsc_acct, :string

    field :plsd_dsc_cc, :string

    field :plsd_cbdn_acct, :string

    field :plsd_cbdn_cc, :string

    field :plsd_clbr_acct, :string

    field :plsd_clbr_cc, :string

    field :plsd_cmtl_acct, :string

    field :plsd_cmtl_cc, :string

    field :plsd_covh_acct, :string

    field :plsd_covh_cc, :string

    field :plsd_csub_acct, :string

    field :plsd_csub_cc, :string

    field :plsd_user1, :string

    field :plsd_user2, :string

    field :plsd_userid, :string

    field :plsd_mod_date, Conduit.QAD.Types.Date

    field :plsd__qadc01, :string

    field :plsd_cbdn_sub, :string

    field :plsd_clbr_sub, :string

    field :plsd_cmtl_sub, :string

    field :plsd_covh_sub, :string

    field :plsd_csub_sub, :string

    field :plsd_dsc_sub, :string

    field :plsd_sls_sub, :string

    field :plsd_fsaccr_acct, :string

    field :plsd_fsaccr_sub, :string

    field :plsd_fsaccr_cc, :string

    field :plsd_fsdef_acct, :string

    field :plsd_fsdef_sub, :string

    field :plsd_fsdef_cc, :string

    field :plsd_domain, :string

    field :oid_plsd_det, :decimal, primary_key: true

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
