defmodule Elixir.Conduit.QAD.Table.Qor_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qor_mstr" do
    field :qor_div, :string

    field :qor_group, :string

    field :qor_nbr, :string

    field :qor_pricing, :integer

    field :qor_seq, :integer

    field :qor_type, :integer

    field :qor_user1, :string

    field :qor_user2, :string

    field :qor__qadc01, :string

    field :qor__qadc02, :string

    field :qor__qadc03, :string

    field :qor__qadd01, :decimal

    field :qor__qadd02, :decimal

    field :qor__qadi01, :integer

    field :qor__qadi02, :integer

    field :qor__qadl01, Conduit.QAD.Types.Bool

    field :qor__qadl02, Conduit.QAD.Types.Bool

    field :qor__qadt01, Conduit.QAD.Types.Date

    field :qor__qadt02, Conduit.QAD.Types.Date

    field :qor_domain, :string

    field :oid_qor_mstr, :decimal, primary_key: true

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
