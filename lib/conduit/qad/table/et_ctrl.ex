defmodule Elixir.Conduit.QAD.Table.Et_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_et_ctrl" do
    field :et_base_curr, :string

    field :et_conv_acct, :string

    field :et_conv_cc, :string

    field :et__qadc05, :string

    field :et_gl_eff_dt, Conduit.QAD.Types.Date

    field :et__qadt04, Conduit.QAD.Types.Date

    field :et__qadl04, Conduit.QAD.Types.Bool

    field :et_print_dc, Conduit.QAD.Types.Bool

    field :et_show_diff, Conduit.QAD.Types.Bool

    field :et_start_conv, Conduit.QAD.Types.Bool

    field :et__qadl05, Conduit.QAD.Types.Bool

    field :et_rate_active, Conduit.QAD.Types.Bool

    field :et__qadi04, :integer

    field :et_user1, :string

    field :et_user2, :string

    field :et__qadd01, :decimal

    field :et__qadd02, :decimal

    field :et__qadd03, :decimal

    field :et__qadi01, :integer

    field :et__qadi02, :integer

    field :et__qadi03, :integer

    field :et__qadl01, Conduit.QAD.Types.Bool

    field :et__qadl02, Conduit.QAD.Types.Bool

    field :et__qadl03, Conduit.QAD.Types.Bool

    field :et__qadc01, :string

    field :et__qadc02, :string

    field :et__qadc03, :string

    field :et__qadt01, Conduit.QAD.Types.Date

    field :et__qadt02, Conduit.QAD.Types.Date

    field :et__qadt03, Conduit.QAD.Types.Date

    field :et_conv_sub, :string

    field :et_domain, :string

    field :oid_et_ctrl, :decimal, primary_key: true

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
