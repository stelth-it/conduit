defmodule Elixir.Conduit.QAD.Table.Insd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_insd_det" do
    field :insd_sched_date, Conduit.QAD.Types.Date

    field :insd_pjs_line, :integer

    field :insd_prj_nbr, :string

    field :insd_sub_nbr, :integer

    field :insd_sched_nbr, :string

    field :insd_qty_inv, :decimal

    field :insd_price, :decimal

    field :insd_list_pr, :decimal

    field :insd_mod_date, Conduit.QAD.Types.Date

    field :insd_mod_userid, :string

    field :insd_user1, :string

    field :insd_user2, :string

    field :insd__qadc01, :string

    field :insd__qadd01, :decimal

    field :insd__qadi01, :integer

    field :insd__qadl01, Conduit.QAD.Types.Bool

    field :insd__qadt01, Conduit.QAD.Types.Date

    field :insd_domain, :string

    field :oid_insd_det, :decimal, primary_key: true

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
