defmodule Elixir.Conduit.QAD.Table.Sbic_ctl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sbic_ctl" do
    field :sbic_active, Conduit.QAD.Types.Bool

    field :sbic_prefix, :string

    field :sbic_index1, :integer

    field :sbic_next_sb, :integer

    field :sbic_user1, :string

    field :sbic_user2, :string

    field :sbic_user3, :string

    field :sbic_user4, :string

    field :sbic__qadc01, :string

    field :sbic__qadc02, :string

    field :sbic__qadc03, :string

    field :sbic__qadc04, :string

    field :sbic__qadi01, :integer

    field :sbic__qadi02, :integer

    field :sbic__qadi03, :integer

    field :sbic__qadi04, :integer

    field :sbic__qadd01, :decimal

    field :sbic__qadd02, :decimal

    field :sbic__qadd03, :decimal

    field :sbic__qadd04, :decimal

    field :sbic__qadl01, Conduit.QAD.Types.Bool

    field :sbic__qadl02, Conduit.QAD.Types.Bool

    field :sbic__qadl03, Conduit.QAD.Types.Bool

    field :sbic__qadl04, Conduit.QAD.Types.Bool

    field :sbic__qadt01, Conduit.QAD.Types.Date

    field :sbic__qadt02, Conduit.QAD.Types.Date

    field :sbic__qadt03, Conduit.QAD.Types.Date

    field :sbic__qadt04, Conduit.QAD.Types.Date

    field :sbic_domain, :string

    field :oid_sbic_ctl, :decimal, primary_key: true

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
