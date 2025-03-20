defmodule Elixir.Conduit.QAD.Table.Rsud_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rsud_det" do
    field :rsud_index, :integer

    field :rsud_group, :string

    field :rsud_sequence, :integer

    field :rsud_notify_nxt, Conduit.QAD.Types.Bool

    field :rsud_svrty_lvl, :integer

    field :rsud_canreroute, Conduit.QAD.Types.Bool

    field :rsud_approved, Conduit.QAD.Types.Bool

    field :rsud_approverid, :string

    field :rsud_appr_date, Conduit.QAD.Types.Date

    field :rsud_cmmtindx, :integer

    field :rsud_user1, :string

    field :rsud_user2, :string

    field :rsud_reroute_date, Conduit.QAD.Types.Date

    field :rsud__qadc01, :string

    field :rsud_domain, :string

    field :oid_rsud_det, :decimal, primary_key: true

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
