defmodule Elixir.Conduit.QAD.Table.Ibh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ibh_hist" do
    field :ibh_nbr, :string

    field :ibh_line, :integer

    field :ibh_feature, :string

    field :ibh_part, :string

    field :ibh_iss_date, Conduit.QAD.Types.Date

    field :ibh_qty_req, :decimal

    field :ibh_qty_all, :decimal

    field :ibh_qty_pick, :decimal

    field :ibh_qty_iss, :decimal

    field :ibh_tot_std, :decimal

    field :ibh_qty_chg, :decimal

    field :ibh_bo_chg, :decimal

    field :ibh_price, :decimal

    field :ibh_loc, :string

    field :ibh_serial, :string

    field :ibh_cmtindx, :integer

    field :ibh_user1, :string

    field :ibh_user2, :string

    field :ibh_inv_nbr, :string

    field :ibh_site, :string

    field :ibh_parent, :string

    field :ibh__qadc01, :string

    field :ibh_cfg_type, :string

    field :ibh_domain, :string

    field :oid_ibh_hist, :decimal, primary_key: true

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
