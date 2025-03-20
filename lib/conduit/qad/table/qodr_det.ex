defmodule Elixir.Conduit.QAD.Table.Qodr_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_qodr_det" do
    field :qodr_div, :string

    field :qodr_group, :string

    field :qodr_line, :integer

    field :qodr_nbr, :string

    field :qodr_pricing, :integer

    field :qodr_seq, :integer

    field :qodr_type, :integer

    field :qodr_user1, :string

    field :qodr_user2, :string

    field :qodr__qadc01, :string

    field :qodr__qadc02, :string

    field :qodr__qadc03, :string

    field :qodr__qadd01, :decimal

    field :qodr__qadd02, :decimal

    field :qodr__qadi01, :integer

    field :qodr__qadi02, :integer

    field :qodr__qadl01, Conduit.QAD.Types.Bool

    field :qodr__qadl02, Conduit.QAD.Types.Bool

    field :qodr__qadt01, Conduit.QAD.Types.Date

    field :qodr__qadt02, Conduit.QAD.Types.Date

    field :qodr_domain, :string

    field :oid_qodr_det, :decimal, primary_key: true

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
