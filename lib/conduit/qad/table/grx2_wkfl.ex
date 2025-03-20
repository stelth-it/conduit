defmodule Elixir.Conduit.QAD.Table.Grx2_wkfl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grx2_wkfl" do
    field :grx2_run_id, :integer

    field :grx2_type, Conduit.QAD.Types.Bool

    field :grx2_nbr, :integer

    field :grx2_acct, :string

    field :grx2_cc, :string

    field :grx2_entity, :string

    field :grx2_project, :string

    field :grx2_sub, :string

    field :grx2_actual, Conduit.QAD.Types.Bool

    field :grx2_bg_code, :string

    field :grx2_level, :integer

    field :grx2_user1, :string

    field :grx2_user2, :string

    field :grx2__qadc01, :string

    field :grx2_domain, :string

    field :oid_grx2_wkfl, :decimal, primary_key: true

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
