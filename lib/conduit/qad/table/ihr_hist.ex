defmodule Elixir.Conduit.QAD.Table.Ihr_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ihr_hist" do
    field :ihr_div, :string

    field :ihr_group, :string

    field :ihr_inv_nbr, :string

    field :ihr_nbr, :string

    field :ihr_pricing, :integer

    field :ihr_seq, :integer

    field :ihr_type, :integer

    field :ihr_user1, :string

    field :ihr_user2, :string

    field :ihr__qadc01, :string

    field :ihr__qadc02, :string

    field :ihr__qadc03, :string

    field :ihr__qadd01, :decimal

    field :ihr__qadd02, :decimal

    field :ihr__qadi01, :integer

    field :ihr__qadi02, :integer

    field :ihr__qadl01, Conduit.QAD.Types.Bool

    field :ihr__qadl02, Conduit.QAD.Types.Bool

    field :ihr__qadt01, Conduit.QAD.Types.Date

    field :ihr__qadt02, Conduit.QAD.Types.Date

    field :ihr_domain, :string

    field :oid_ihr_hist, :decimal, primary_key: true

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
