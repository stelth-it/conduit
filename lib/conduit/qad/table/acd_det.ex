defmodule Elixir.Conduit.QAD.Table.Acd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_acd_det" do
    field :acd_acc, :string

    field :acd_cc, :string

    field :acd_entity, :string

    field :acd_project, :string

    field :acd_year, :integer

    field :acd_per, :integer

    field :acd_amt, :decimal

    field :acd_curr_amt, :decimal

    field :acd_user1, :string

    field :acd_user2, :string

    field :acd_sub, :string

    field :acd_ecur_amt, :decimal

    field :acd__qadc01, :string

    field :acd_dr_amt, :decimal

    field :acd_cr_amt, :decimal

    field :acd_cr_curr_amt, :decimal

    field :acd_dr_curr_amt, :decimal

    field :acd_domain, :string

    field :oid_acd_det, :decimal, primary_key: true

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
