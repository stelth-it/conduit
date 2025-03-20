defmodule Elixir.Conduit.QAD.Table.Opgl_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_opgl_det" do
    field :opgl_cr_acct, :string

    field :opgl_cr_cc, :string

    field :opgl_dr_acct, :string

    field :opgl_dr_cc, :string

    field :opgl_trnbr, :integer

    field :opgl_gl_amt, :decimal

    field :opgl_gl_ref, :string

    field :opgl_type, :string

    field :opgl_cr_line, :integer

    field :opgl_dr_line, :integer

    field :opgl_cr_proj, :string

    field :opgl_dr_proj, :string

    field :opgl_user1, :string

    field :opgl_user2, :string

    field :opgl_sequence, :integer

    field :opgl__qadc01, :string

    field :opgl_dy_code, :string

    field :opgl_dy_num, :string

    field :opgl_cr_sub, :string

    field :opgl_dr_sub, :string

    field :opgl_domain, :string

    field :oid_opgl_det, :decimal, primary_key: true

    field :opgl_eff_trans, Conduit.QAD.Types.Bool

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
