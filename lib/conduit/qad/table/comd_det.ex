defmodule Elixir.Conduit.QAD.Table.Comd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_comd_det" do
    field :comd_comm_code, :string

    field :comd_part, :string

    field :comd_user1, :string

    field :comd_user2, :string

    field :comd_user3, :string

    field :comd_user4, :string

    field :comd__qadc01, :string

    field :comd__qadc02, :string

    field :comd__qadc03, :string

    field :comd__qadc04, :string

    field :comd__qadd01, :decimal

    field :comd__qadd02, :decimal

    field :comd__qadl01, Conduit.QAD.Types.Bool

    field :comd__qadl02, Conduit.QAD.Types.Bool

    field :comd__qadt01, Conduit.QAD.Types.Date

    field :comd__qadt02, Conduit.QAD.Types.Date

    field :comd__qadi01, :integer

    field :comd__qadi02, :integer

    field :comd_domain, :string

    field :oid_comd_det, :decimal, primary_key: true

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
