defmodule Elixir.Conduit.QAD.Table.Plt_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_plt_det" do
    field :plt_prod_line, :string

    field :plt_tax_type, :string

    field :plt_taxc, :string

    field :plt_taxable, Conduit.QAD.Types.Bool

    field :plt_user1, :string

    field :plt_user2, :string

    field :plt_userid, :string

    field :plt_mod_date, Conduit.QAD.Types.Date

    field :plt__qadc01, :string

    field :plt_domain, :string

    field :oid_plt_det, :decimal, primary_key: true

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
