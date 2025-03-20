defmodule Elixir.Conduit.QAD.Table.Pcd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pcd_det" do
    field :pcd_nbr, :string

    field :pcd_line, :integer

    field :pcd_element, :string

    field :pcd_amt, :decimal

    field :pcd_curr, :string

    field :pcd__qad01, Conduit.QAD.Types.Date

    field :pcd__qad02, :string

    field :pcd__qad03, Conduit.QAD.Types.Bool

    field :pcd__qad04, :decimal

    field :pcd__qad05, :decimal

    field :pcd_user1, :string

    field :pcd_user2, :string

    field :pcd_domain, :string

    field :oid_pcd_det, :decimal, primary_key: true

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
