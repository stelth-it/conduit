defmodule Elixir.Conduit.QAD.Table.Vdc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vdc_ctrl" do
    field :vdc_nbr, :integer

    field :vdc_user1, :string

    field :vdc_user2, :string

    field :vdc__qadi01, :integer

    field :vdc__qadc01, :string

    field :vdc_domain, :string

    field :oid_vdc_ctrl, :decimal, primary_key: true

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
