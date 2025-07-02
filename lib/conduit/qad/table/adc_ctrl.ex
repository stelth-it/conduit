defmodule Elixir.Conduit.QAD.Table.Adc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_adc_ctrl" do
    field :adc_format, :integer

    field :adc_user1, :string

    field :adc_user2, :string

    field :adc__qadi01, :integer

    field :adc__qadc01, :string

    field :adc_domain, :string

    field :oid_adc_ctrl, :decimal, primary_key: true

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
