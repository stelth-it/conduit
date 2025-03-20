defmodule Elixir.Conduit.QAD.Table.Pigc_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pigc_det" do
    field :pigc_amt_type, :string

    field :pigc_code, :string

    field :pigc_div, :string

    field :pigc_expire, Conduit.QAD.Types.Date

    field :pigc_include, Conduit.QAD.Types.Bool

    field :pigc_mem_ref, :string

    field :pigc_mem_type, :integer

    field :pigc_start, Conduit.QAD.Types.Date

    field :pigc_user1, :string

    field :pigc_user2, :string

    field :pigc__qadc01, :string

    field :pigc__qadc02, :string

    field :pigc__qadc03, :string

    field :pigc__qadd01, :decimal

    field :pigc__qadd02, :decimal

    field :pigc__qadi01, :integer

    field :pigc__qadi02, :integer

    field :pigc__qadl01, Conduit.QAD.Types.Bool

    field :pigc__qadl02, Conduit.QAD.Types.Bool

    field :pigc__qadt01, Conduit.QAD.Types.Date

    field :pigc__qadt02, Conduit.QAD.Types.Date

    field :pigc_curr, :string

    field :pigc_srch_type, :integer

    field :pigc_domain, :string

    field :oid_pigc_det, :decimal, primary_key: true

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
