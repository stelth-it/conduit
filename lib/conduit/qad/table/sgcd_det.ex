defmodule Elixir.Conduit.QAD.Table.Sgcd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sgcd_det" do
    field :sgcd_grp, :string

    field :sgcd_inv_mov, :string

    field :sgcd_seq, :integer

    field :sgcd_carrier, :string

    field :sgcd_user1, :string

    field :sgcd_user2, :string

    field :sgcd__qadc01, :string

    field :sgcd_domain, :string

    field :oid_sgcd_det, :decimal, primary_key: true

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
