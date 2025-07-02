defmodule Elixir.Conduit.QAD.Table.Pfc_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pfc_det" do
    field :pfc_part, :string

    field :pfc_site, :string

    field :pfc_date, Conduit.QAD.Types.Date

    field :pfc_peg_part, :string

    field :pfc_qty, :decimal

    field :pfc_id_num, :integer

    field :pfc_user1, :string

    field :pfc_user2, :string

    field :pfc__qadc01, :string

    field :pfc_domain, :string

    field :oid_pfc_det, :decimal, primary_key: true

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
