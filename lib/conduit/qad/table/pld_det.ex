defmodule Elixir.Conduit.QAD.Table.Pld_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pld_det" do
    field :pld_prodline, :string

    field :pld_site, :string

    field :pld_loc, :string

    field :pld_inv_acct, :string

    field :pld_scrpacct, :string

    field :pld_dscracct, :string

    field :pld_inv_cc, :string

    field :pld_scrp_cc, :string

    field :pld_dscr_cc, :string

    field :pld_user1, :string

    field :pld_user2, :string

    field :pld_userid, :string

    field :pld_mod_date, Conduit.QAD.Types.Date

    field :pld_cchg_acc, :string

    field :pld_cchg_cc, :string

    field :pld__qadc01, :string

    field :pld_cchg_sub, :string

    field :pld_dscr_sub, :string

    field :pld_inv_sub, :string

    field :pld_scrp_sub, :string

    field :pld_domain, :string

    field :oid_pld_det, :decimal, primary_key: true

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
