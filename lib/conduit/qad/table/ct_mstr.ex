defmodule Elixir.Conduit.QAD.Table.Ct_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ct_mstr" do
    field :ct_code, :string

    field :ct_desc, :string

    field :ct_disc_pct, :decimal

    field :ct_disc_days, :decimal

    field :ct_due_days, :decimal

    field :ct_due_date, Conduit.QAD.Types.Date

    field :ct_xfrom_inv, Conduit.QAD.Types.Bool

    field :ct_disc_date, Conduit.QAD.Types.Date

    field :ct_xdue_inv, Conduit.QAD.Types.Bool

    field :ct_dating, Conduit.QAD.Types.Bool

    field :ct_user1, :string

    field :ct_user2, :string

    field :ct_userid, :string

    field :ct_mod_date, Conduit.QAD.Types.Date

    field :ct_due_inv, :integer

    field :ct_from_inv, :integer

    field :ct_terms_int, :decimal

    field :ct_late_int, :decimal

    field :ct_base_date, Conduit.QAD.Types.Date

    field :ct_base_days, :integer

    field :ct_min_days, :integer

    field :ct_grace_days, :integer

    field :ct__qadc01, :string

    field :ct_mtd_disc, Conduit.QAD.Types.Bool

    field :ct_mtd_due, Conduit.QAD.Types.Bool

    field :ct_domain, :string

    field :oid_ct_mstr, :decimal, primary_key: true

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
