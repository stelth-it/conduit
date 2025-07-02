defmodule Elixir.Conduit.QAD.Table.Mrp_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_mrp_det" do
    field :mrp_dataset, :string

    field :mrp_part, :string

    field :mrp_nbr, :string

    field :mrp_line, :string

    field :mrp_rel_date, Conduit.QAD.Types.Date

    field :mrp_due_date, Conduit.QAD.Types.Date

    field :mrp_qty, :decimal

    field :mrp_type, :string

    field :mrp_detail, :string

    field :mrp__qad01, Conduit.QAD.Types.Bool

    field :mrp_site, :string

    field :mrp_user1, :string

    field :mrp_user2, :string

    field :mrp_line2, :string

    field :mrp_ord_site, :string

    field :mrp_keyid, :integer

    field :mrp_domain, :string

    field :oid_mrp_det, :decimal, primary_key: true

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
