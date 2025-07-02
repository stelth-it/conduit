defmodule Elixir.Conduit.QAD.Table.Cpcd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cpcd_det" do
    field :cpcd_cust, :string

    field :cpcd_year, :integer

    field :cpcd_type, :string

    field :cpcd_per, :integer

    field :cpcd_start, Conduit.QAD.Types.Date

    field :cpcd_end, Conduit.QAD.Types.Date

    field :cpcd__chr01, :string

    field :cpcd__chr02, :string

    field :cpcd__chr03, :string

    field :cpcd__chr04, :string

    field :cpcd__dec01, :decimal

    field :cpcd__log01, Conduit.QAD.Types.Bool

    field :cpcd_user1, :string

    field :cpcd_user2, :string

    field :cpcd_domain, :string

    field :oid_cpcd_det, :decimal, primary_key: true

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
