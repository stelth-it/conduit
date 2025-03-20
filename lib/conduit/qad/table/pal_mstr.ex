defmodule Elixir.Conduit.QAD.Table.Pal_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pal_mstr" do
    field :pal_pallet, :string

    field :pal_desc, :string

    field :pal_unit_lay, :integer

    field :pal_um, :string

    field :pal_nbr_lay, :integer

    field :pal_height, :decimal

    field :pal_weight, :decimal

    field :pal_user1, :string

    field :pal_user2, :string

    field :pal__chr01, :string

    field :pal__chr03, :string

    field :pal__chr04, :string

    field :pal__chr05, :string

    field :pal__dec01, :decimal

    field :pal__dec02, :decimal

    field :pal__chr02, :string

    field :pal_hght_um, :string

    field :pal_wght_um, :string

    field :pal_domain, :string

    field :oid_pal_mstr, :decimal, primary_key: true

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
