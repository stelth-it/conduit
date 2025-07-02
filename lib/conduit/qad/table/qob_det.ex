defmodule Elixir.Conduit.QAD.Table.Qob_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_qob_det" do
    field :qob_nbr, :string

    field :qob_line, :integer

    field :qob_feature, :string

    field :qob_part, :string

    field :qob_iss_date, Conduit.QAD.Types.Date

    field :qob_qty_req, :decimal

    field :qob_qty_all, :decimal

    field :qob_qty_pick, :decimal

    field :qob_qty_iss, :decimal

    field :qob_tot_std, :decimal

    field :qob_qty_chg, :decimal

    field :qob_bo_chg, :decimal

    field :qob_price, :decimal

    field :qob_loc, :string

    field :qob_serial, :string

    field :qob_cmtindx, :integer

    field :qob_user1, :string

    field :qob_user2, :string

    field :qob_site, :string

    field :qob_parent, :string

    field :qob__qadc01, :string

    field :qob_cfg_type, :string

    field :qob_domain, :string

    field :oid_qob_det, :decimal, primary_key: true

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
