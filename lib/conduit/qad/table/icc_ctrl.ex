defmodule Elixir.Conduit.QAD.Table.Icc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_icc_ctrl" do
    field :icc_cur_cost, :string

    field :icc__qadi04, :integer

    field :icc_jrnl, :integer

    field :icc_gl_sum, Conduit.QAD.Types.Bool

    field :icc_tol_flag, Conduit.QAD.Types.Bool

    field :icc_tol_a, :decimal

    field :icc_tol_b, :decimal

    field :icc_tol_c, :decimal

    field :icc_tol_o, :decimal

    field :icc_cur_ap, Conduit.QAD.Types.Bool

    field :icc_iss_days, :integer

    field :icc__qad03, :integer

    field :icc__qad02, :integer

    field :icc_gl_tran, Conduit.QAD.Types.Bool

    field :icc__qad01, :integer

    field :icc_pk_ord, :integer

    field :icc_ascend, Conduit.QAD.Types.Bool

    field :icc_user1, :string

    field :icc_user2, :string

    field :icc__qadi02, :integer

    field :icc_gl_set, :string

    field :icc_cur_set, :string

    field :icc_cogs, Conduit.QAD.Types.Bool

    field :icc__qadc01, :string

    field :icc__qadc03, :string

    field :icc_xclr_acct, :string

    field :icc_xclr_cc, :string

    field :icc_mirror, Conduit.QAD.Types.Bool

    field :icc_site, :string

    field :icc__qadc02, :string

    field :icc_xclr_sub, :string

    field :icc_domain, :string

    field :oid_icc_ctrl, :decimal, primary_key: true

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
