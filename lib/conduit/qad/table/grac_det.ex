defmodule Elixir.Conduit.QAD.Table.Grac_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grac_det" do
    field :grac_acc, :string

    field :grac_cc, :string

    field :grac_entity, :string

    field :grac_project, :string

    field :grac_year, :integer

    field :grac_per, :integer

    field :grac_amt, :decimal

    field :grac_curr_amt, :decimal

    field :grac_user1, :string

    field :grac_user2, :string

    field :grac_sub, :string

    field :grac_beg_bal, :decimal

    field :grac_beg_cbal, :decimal

    field :grac_ytd_bal, :decimal

    field :grac_ytd_cbal, :decimal

    field :grac_per_bal, :decimal

    field :grac_per_cbal, :decimal

    field :grac__qadc01, :string

    field :grac_dr_amt, :decimal

    field :grac_cr_amt, :decimal

    field :grac_cr_curr_amt, :decimal

    field :grac_dr_curr_amt, :decimal

    field :grac_ytd_cr_amt, :decimal

    field :grac_ytd_dr_amt, :decimal

    field :grac_ytd_cr_curr_amt, :decimal

    field :grac_ytd_dr_curr_amt, :decimal

    field :grac_beg_dr_bal, :decimal

    field :grac_beg_dr_cbal, :decimal

    field :grac_beg_cr_bal, :decimal

    field :grac_beg_cr_cbal, :decimal

    field :grac_domain, :string

    field :oid_grac_det, :decimal, primary_key: true

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
