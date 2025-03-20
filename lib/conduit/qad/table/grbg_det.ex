defmodule Elixir.Conduit.QAD.Table.Grbg_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grbg_det" do
    field :grbg_acc, :string

    field :grbg_cc, :string

    field :grbg_project, :string

    field :grbg_year, :integer

    field :grbg_per, :integer

    field :grbg_amt, :decimal

    field :grbg_entity, :string

    field :grbg_code, :string

    field :grbg_user1, :string

    field :grbg_user2, :string

    field :grbg_sub, :string

    field :grbg_beg_bal, :decimal

    field :grbg_ytd_bal, :decimal

    field :grbg_per_bal, :decimal

    field :grbg__qadc01, :string

    field :grbg_domain, :string

    field :oid_grbg_det, :decimal, primary_key: true

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
