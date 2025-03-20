defmodule Elixir.Conduit.QAD.Table.Exru_usage do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_exru_usage" do
    field :exru_seq, :integer

    field :exru_step, :integer

    field :exru_curr1, :string

    field :exru_curr2, :string

    field :exru_ex_rate, :decimal

    field :exru_ex_rate2, :decimal

    field :exru__qadd01, :decimal

    field :exru__qadc01, :string

    field :exru__qadl01, Conduit.QAD.Types.Bool

    field :exru__qadt01, Conduit.QAD.Types.Date

    field :oid_exru_usage, :decimal, primary_key: true

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
