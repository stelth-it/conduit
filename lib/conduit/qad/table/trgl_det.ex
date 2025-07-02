defmodule Elixir.Conduit.QAD.Table.Trgl_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_trgl_det" do
    field :trgl_cr_acct, :string

    field :trgl_cr_cc, :string

    field :trgl_dr_acct, :string

    field :trgl_dr_cc, :string

    field :trgl_trnbr, :integer

    field :trgl_gl_amt, :decimal

    field :trgl_gl_ref, :string

    field :trgl_type, :string

    field :trgl_cr_proj, :string

    field :trgl_dr_proj, :string

    field :trgl_cr_line, :integer

    field :trgl_dr_line, :integer

    field :trgl_user1, :string

    field :trgl_user2, :string

    field :trgl_sequence, :integer

    field :trgl__qadc01, :string

    field :trgl_dy_code, :string

    field :trgl_dy_num, :string

    field :trgl_cr_sub, :string

    field :trgl_dr_sub, :string

    field :trgl_domain, :string

    field :oid_trgl_det, :decimal, primary_key: true

    field :trgl_eff_trans, Conduit.QAD.Types.Bool

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
