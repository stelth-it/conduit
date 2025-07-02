defmodule Elixir.Conduit.QAD.Table.Spt_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_spt_det" do
    field :spt_sim, :string

    field :spt_part, :string

    field :spt_element, :string

    field :spt_cst_tl, :decimal

    field :spt_cst_ll, :decimal

    field :spt_user1, :string

    field :spt_user2, :string

    field :spt_userid, :string

    field :spt_mod_date, Conduit.QAD.Types.Date

    field :spt_pct_tl, :decimal

    field :spt_pct_ll, :decimal

    field :spt_ao, Conduit.QAD.Types.Bool

    field :spt_site, :string

    field :spt__qadc01, :string

    field :spt_domain, :string

    field :oid_spt_det, :decimal, primary_key: true

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
