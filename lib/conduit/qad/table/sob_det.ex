defmodule Elixir.Conduit.QAD.Table.Sob_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sob_det" do
    field :sob_nbr, :string

    field :sob_line, :integer

    field :sob_feature, :string

    field :sob_part, :string

    field :sob_iss_date, Conduit.QAD.Types.Date

    field :sob_qty_req, :decimal

    field :sob_qty_all, :decimal

    field :sob_qty_pick, :decimal

    field :sob_qty_iss, :decimal

    field :sob_tot_std, :decimal

    field :sob_qty_chg, :decimal

    field :sob_bo_chg, :decimal

    field :sob_price, :decimal

    field :sob_loc, :string

    field :sob_serial, :string

    field :sob_cmtindx, :integer

    field :sob_user1, :string

    field :sob_user2, :string

    field :sob_site, :string

    field :sob_parent, :string

    field :sob_scrp_pct, :decimal

    field :sob__qadc01, :string

    field :sob_cfg_type, :string

    field :sob_domain, :string

    field :oid_sob_det, :decimal, primary_key: true

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
