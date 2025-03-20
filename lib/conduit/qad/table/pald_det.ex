defmodule Elixir.Conduit.QAD.Table.Pald_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pald_det" do
    field :pald_pallet, :string

    field :pald_desc, :string

    field :pald_unit_lay, :integer

    field :pald_um, :string

    field :pald_nbr_lay, :integer

    field :pald_height, :decimal

    field :pald_weight, :decimal

    field :pald_user1, :string

    field :pald_user2, :string

    field :pald__chr01, :string

    field :pald__chr03, :string

    field :pald__chr04, :string

    field :pald__chr05, :string

    field :pald__dec01, :decimal

    field :pald__dec02, :decimal

    field :pald__chr02, :string

    field :pald_part, :string

    field :pald_hght_um, :string

    field :pald_wght_um, :string

    field :pald_domain, :string

    field :oid_pald_det, :decimal, primary_key: true

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
