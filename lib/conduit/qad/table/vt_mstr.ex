defmodule Elixir.Conduit.QAD.Table.Vt_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vt_mstr" do
    field :vt_class, :string

    field :vt_start, Conduit.QAD.Types.Date

    field :vt_end, Conduit.QAD.Types.Date

    field :vt_tax_pct, :decimal

    field :vt_ap_acct, :string

    field :vt_ap_cc, :string

    field :vt_ar_acct, :string

    field :vt_ar_cc, :string

    field :vt_project, :string

    field :vt_user1, :string

    field :vt_user2, :string

    field :vt_desc, :string

    field :vt__qadc01, :string

    field :oid_vt_mstr, :decimal, primary_key: true

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
