defmodule Elixir.Conduit.QAD.Table.Lpmd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lpmd_det" do
    field :lpmd_product, :string

    field :lpmd_exec, :string

    field :lpmd_mod_userid, :string

    field :lpmd_mod_date, Conduit.QAD.Types.Date

    field :lpmd__qadc01, :string

    field :lpmd__qadc02, :string

    field :lpmd__qadd01, :decimal

    field :lpmd__qadt01, Conduit.QAD.Types.Date

    field :lpmd_access_type, :string

    field :oid_lpmd_det, :decimal, primary_key: true

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
