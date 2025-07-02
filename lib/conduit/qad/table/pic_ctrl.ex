defmodule Elixir.Conduit.QAD.Table.Pic_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pic_ctrl" do
    field :pic__qadi01, :integer

    field :pic_list_id, :integer

    field :pic_po_date, :string

    field :pic_qo_date, :string

    field :pic_so_date, :string

    field :pic_fs_date, :string

    field :pic_po_fact, Conduit.QAD.Types.Bool

    field :pic_qo_fact, Conduit.QAD.Types.Bool

    field :pic_so_fact, Conduit.QAD.Types.Bool

    field :pic_fs_fact, Conduit.QAD.Types.Bool

    field :pic_fs_rfact, :integer

    field :pic_po_rfact, :integer

    field :pic_qo_rfact, :integer

    field :pic_so_rfact, :integer

    field :pic_item_regen, Conduit.QAD.Types.Bool

    field :pic_cust_regen, Conduit.QAD.Types.Bool

    field :pic_so_linpri, Conduit.QAD.Types.Bool

    field :pic_fs_linpri, Conduit.QAD.Types.Bool

    field :pic_po_linpri, Conduit.QAD.Types.Bool

    field :pic_qo_linpri, Conduit.QAD.Types.Bool

    field :pic_disc_comb, :string

    field :pic_user1, :string

    field :pic_user2, :string

    field :pic_promo_pre, :string

    field :pic__qadc01, :string

    field :pic_domain, :string

    field :oid_pic_ctrl, :decimal, primary_key: true

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
