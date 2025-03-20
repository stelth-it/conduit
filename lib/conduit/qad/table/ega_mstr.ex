defmodule Elixir.Conduit.QAD.Table.Ega_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ega_mstr" do
    field :ega_week, Conduit.QAD.Types.Date

    field :ega_eng_code, :string

    field :ega_esh_schedule, :string

    field :ega_calls, {:array, :integer}

    field :ega_hours, {:array, :decimal}

    field :ega_avail_hours, {:array, :decimal}

    field :ega_user1, :string

    field :ega_user2, :string

    field :ega__int01, :integer

    field :ega__qadi01, :integer

    field :ega__dec01, :decimal

    field :ega__qade01, :decimal

    field :ega__log01, Conduit.QAD.Types.Bool

    field :ega__qadl01, Conduit.QAD.Types.Bool

    field :ega_domain, :string

    field :oid_ega_mstr, :decimal, primary_key: true

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
