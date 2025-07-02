defmodule Elixir.Conduit.QAD.Table.Grx_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grx_mstr" do
    field :grx_report, :string

    field :grx_desc, :string

    field :grx_add_id, :string

    field :grx_add_date, Conduit.QAD.Types.Date

    field :grx_mod_id, :string

    field :grx_mod_date, Conduit.QAD.Types.Date

    field :grx_status, Conduit.QAD.Types.Bool

    field :grx_cmtindx, :integer

    field :grx_row_group, :string

    field :grx_col_group, :string

    field :grx_round, :string

    field :grx_format, :string

    field :grx_user1, :string

    field :grx_user2, :string

    field :grx_lab_bc, :integer

    field :grx_rp_group, :string

    field :grx_mt_group, :string

    field :grx_ctl_gl, :string

    field :grx_ctl_ac, :string

    field :grx_cont_pg, Conduit.QAD.Types.Bool

    field :grx_text_ix, {:array, :integer}

    field :grx_defprt, :string

    field :grx_mrg_top, :integer

    field :grx_mrg_bot, :integer

    field :grx_mrg_left, :integer

    field :grx_mrg_right, :integer

    field :grx_zero_suppress, :string

    field :grx__qadc01, :string

    field :grx_domain, :string

    field :oid_grx_mstr, :decimal, primary_key: true

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
