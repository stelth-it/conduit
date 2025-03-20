defmodule Elixir.Conduit.QAD.Table.Gr_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gr_ctrl" do
    field :gr_index1, :integer

    field :gr_format, :string

    field :gr_qtr_lbl, {:array, :string}

    field :gr_ac_cmmts, Conduit.QAD.Types.Bool

    field :gr_rg_cmmts, Conduit.QAD.Types.Bool

    field :gr_cg_cmmts, Conduit.QAD.Types.Bool

    field :gr_rp_cmmts, Conduit.QAD.Types.Bool

    field :gr_round, :string

    field :gr_rg_width, :integer

    field :gr_run_id, :integer

    field :gr_col_width, :integer

    field :gr_precedence, Conduit.QAD.Types.Bool

    field :gr_per, :integer

    field :gr_year, :integer

    field :gr_cyre, :string

    field :gr_cyis, :string

    field :gr_txt_ix, :integer

    field :gr_user1, :string

    field :gr_user2, :string

    field :gr__qadc01, :string

    field :gr_domain, :string

    field :oid_gr_ctrl, :decimal, primary_key: true

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
