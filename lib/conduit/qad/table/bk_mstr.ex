defmodule Elixir.Conduit.QAD.Table.Bk_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bk_mstr" do
    field :bk_code, :string

    field :bk_acct, :string

    field :bk_cc, :string

    field :bk_check, :integer

    field :bk_desc, :string

    field :bk_curr, :string

    field :bk__qadc10, :string

    field :bk__qadc12, :string

    field :bk_user1, :string

    field :bk_user2, :string

    field :bk_entity, :string

    field :bk_pip_acct, :string

    field :bk_pip_cc, :string

    field :bk_bk_acct1, :string

    field :bk_bk_acct2, :string

    field :bk_userid, :string

    field :bk_mod_date, Conduit.QAD.Types.Date

    field :bk__qadc02, :string

    field :bk__qadc03, :string

    field :bk__qadc04, :string

    field :bk__qadc05, :string

    field :bk_min_drft, :decimal

    field :bk_max_drft, :decimal

    field :bk_drft_chg, :decimal

    field :bk_drft_chg_pct, :decimal

    field :bk_dftar_acct, :string

    field :bk_dftar_cc, :string

    field :bk_bkchg_acct, :string

    field :bk_bkchg_cc, :string

    field :bk_disc_acct, :string

    field :bk_disc_cc, :string

    field :bk_ddft_acct, :string

    field :bk_ddft_cc, :string

    field :bk_dftap_acct, :string

    field :bk_dftap_cc, :string

    field :bk_bktx_acct, :string

    field :bk_bktx_cc, :string

    field :bk_cdft_acct, :string

    field :bk_cdft_cc, :string

    field :bk_edft_acct, :string

    field :bk_edft_cc, :string

    field :bk__qadc01, :string

    field :bk__qadc06, :string

    field :bk__qadc07, :string

    field :bk__qadc08, :string

    field :bk__qadc09, :string

    field :bk_sub, :string

    field :bk_bkchg_sub, :string

    field :bk_bktx_sub, :string

    field :bk_cdft_sub, :string

    field :bk_ddft_sub, :string

    field :bk_dftap_sub, :string

    field :bk_dftar_sub, :string

    field :bk_disc_sub, :string

    field :bk_edft_sub, :string

    field :bk_pip_sub, :string

    field :bk__qadc11, :string

    field :bk_validation, :string

    field :bk_domain, :string

    field :oid_bk_mstr, :decimal, primary_key: true

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
