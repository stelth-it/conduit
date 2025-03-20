defmodule Elixir.Conduit.QAD.Table.Pth_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pth_hist" do
    field :pth_year, :integer

    field :pth_part, :string

    field :pth_tot_qty, :decimal

    field :pth_tot_sale, :decimal

    field :pth_tot_cost, :decimal

    field :pth_user1, :string

    field :pth_user2, :string

    field :pth_type, :string

    field :pth__chr01, :string

    field :pth__chr02, :string

    field :pth__chr03, :string

    field :pth__chr04, :string

    field :pth__chr05, :string

    field :pth__dte01, Conduit.QAD.Types.Date

    field :pth__dte02, Conduit.QAD.Types.Date

    field :pth__dec01, :decimal

    field :pth__dec02, :decimal

    field :pth__log01, Conduit.QAD.Types.Bool

    field :pth_for, :string

    field :pth_domain, :string

    field :oid_pth_hist, :decimal, primary_key: true

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
