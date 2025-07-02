defmodule Elixir.Conduit.QAD.Table.Cclscd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cclscd_det" do
    field :cclscd_shipto, :string

    field :cclscd_part, :string

    field :cclscd_curr, :string

    field :cclscd_start, Conduit.QAD.Types.Date

    field :cclscd_expire, Conduit.QAD.Types.Date

    field :cclscd_price, :decimal

    field :cclscd_ref, :string

    field :cclscd_mod_userid, :string

    field :cclscd_mod_date, Conduit.QAD.Types.Date

    field :cclscd_userc01, :string

    field :cclscd_userc02, :string

    field :cclscd__qadc01, :string

    field :cclscd__qadc02, :string

    field :cclscd_domain, :string

    field :oid_cclscd_det, :decimal, primary_key: true

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
