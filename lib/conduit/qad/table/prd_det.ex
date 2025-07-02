defmodule Elixir.Conduit.QAD.Table.Prd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_prd_det" do
    field :prd_dev, :string

    field :prd_desc, :string

    field :prd_st_80, :string

    field :prd_reset, :string

    field :prd_st_132, :string

    field :prd_st_bc, :string

    field :prd_end_bc, :string

    field :prd_neg_line, :string

    field :prd_length, :integer

    field :prd_blank, :integer

    field :prd_page, :string

    field :prd_type, :string

    field :prd_spooler, Conduit.QAD.Types.Bool

    field :prd_path, :string

    field :prd_init, :string

    field :prd_init_pro, :string

    field :prd_rset_pro, :string

    field :prd_user1, :string

    field :prd_user2, :string

    field :prd_mapterm, :string

    field :prd_max_page, :integer

    field :prd_scroll_only, Conduit.QAD.Types.Bool

    field :prd__qad01, :string

    field :prd_dest_type, :integer

    field :oid_prd_det, :decimal, primary_key: true

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
