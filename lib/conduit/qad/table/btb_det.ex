defmodule Elixir.Conduit.QAD.Table.Btb_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_btb_det" do
    field :btb_so, :string

    field :btb_sod_line, :integer

    field :btb_cm_addr, :string

    field :btb_cm_part, :string

    field :btb_cm_desc, :string

    field :btb_so_price, :decimal

    field :btb_pr_so, :string

    field :btb_pr_sod_line, :integer

    field :btb_user1, :string

    field :btb_user2, :string

    field :btb_mod_userid, :string

    field :btb_mod_date, Conduit.QAD.Types.Date

    field :btb__qadc01, :string

    field :btb_domain, :string

    field :oid_btb_det, :decimal, primary_key: true

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
