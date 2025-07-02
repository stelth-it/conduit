defmodule Elixir.Conduit.QAD.Table.Plid_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_plid_det" do
    field :plid_pli_keyid, :integer

    field :plid_line, :integer

    field :plid_order_type, :string

    field :plid_order, :string

    field :plid_order_line, :integer

    field :plid_inv_qty, :decimal

    field :plid_inv_cost, :decimal

    field :plid_pvo_id, :integer

    field :plid_taxable, Conduit.QAD.Types.Bool

    field :plid_taxc, :string

    field :plid_tax_env, :string

    field :plid_tax_in, Conduit.QAD.Types.Bool

    field :plid_tax_usage, :string

    field :plid_mod_date, Conduit.QAD.Types.Date

    field :plid_mod_userid, :string

    field :plid_user1, :string

    field :plid_user2, :string

    field :plid__qadc01, :string

    field :plid__qadc02, :string

    field :plid_domain, :string

    field :oid_plid_det, :decimal, primary_key: true

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
