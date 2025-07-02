defmodule Elixir.Conduit.QAD.Table.Apm_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_apm_ctrl" do
    field :apm__qadi03, :integer

    field :apm_div, :string

    field :apm_multi_div, Conduit.QAD.Types.Bool

    field :apm_prig1, Conduit.QAD.Types.Bool

    field :apm_prig2, Conduit.QAD.Types.Bool

    field :apm_plpri, Conduit.QAD.Types.Bool

    field :apm_plpri_sseq, :string

    field :apm_plpri_dseq, :string

    field :apm_manual, Conduit.QAD.Types.Bool

    field :apm_line_rel, Conduit.QAD.Types.Bool

    field :apm_user1, :string

    field :apm_user2, :string

    field :apm__qadc01, :string

    field :apm__qadc02, :string

    field :apm__qadc03, :string

    field :apm__qadd01, :decimal

    field :apm__qadd02, :decimal

    field :apm__qadi01, :integer

    field :apm__qadi02, :integer

    field :apm__qadl01, Conduit.QAD.Types.Bool

    field :apm__qadl02, Conduit.QAD.Types.Bool

    field :apm__qadl03, Conduit.QAD.Types.Bool

    field :apm__qadt01, Conduit.QAD.Types.Date

    field :apm__qadt02, Conduit.QAD.Types.Date

    field :apm_domain, :string

    field :oid_apm_ctrl, :decimal, primary_key: true

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
