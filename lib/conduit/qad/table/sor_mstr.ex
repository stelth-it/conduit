defmodule Elixir.Conduit.QAD.Table.Sor_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sor_mstr" do
    field :sor_div, :string

    field :sor_group, :string

    field :sor_nbr, :string

    field :sor_pricing, :integer

    field :sor_seq, :integer

    field :sor_type, :integer

    field :sor_user1, :string

    field :sor_user2, :string

    field :sor__qadc01, :string

    field :sor__qadc02, :string

    field :sor__qadc03, :string

    field :sor__qadd01, :decimal

    field :sor__qadd02, :decimal

    field :sor__qadi01, :integer

    field :sor__qadi02, :integer

    field :sor__qadl01, Conduit.QAD.Types.Bool

    field :sor__qadl02, Conduit.QAD.Types.Bool

    field :sor__qadt01, Conduit.QAD.Types.Date

    field :sor__qadt02, Conduit.QAD.Types.Date

    field :sor_domain, :string

    field :oid_sor_mstr, :decimal, primary_key: true

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
