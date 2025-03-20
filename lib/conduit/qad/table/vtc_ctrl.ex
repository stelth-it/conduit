defmodule Elixir.Conduit.QAD.Table.Vtc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vtc_ctrl" do
    field :vtc_vt_class, :string

    field :vtc_disc, Conduit.QAD.Types.Bool

    field :vtc_user1, :string

    field :vtc_user2, :string

    field :vtc_index1, :integer

    field :vtc_round, :string

    field :vtc_pmt_disc, Conduit.QAD.Types.Bool

    field :vtc_val_reg, Conduit.QAD.Types.Bool

    field :vtc__qadc01, :string

    field :oid_vtc_ctrl, :decimal, primary_key: true

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
