defmodule Elixir.Conduit.QAD.Table.Tax_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tax_mstr" do
    field :tax_state, :string

    field :tax_city, :string

    field :tax_tax_pct, {:array, :decimal}

    field :tax_acct, {:array, :string}

    field :tax_cc, {:array, :string}

    field :tax_county, :string

    field :tax_trl, Conduit.QAD.Types.Bool

    field :tax_user1, :string

    field :tax_user2, :string

    field :tax_userid, :string

    field :tax_effdate, Conduit.QAD.Types.Date

    field :tax_mod_date, Conduit.QAD.Types.Date

    field :tax_max, :decimal

    field :tax__qad01, :string

    field :tax__qad02, :string

    field :tax__qad03, Conduit.QAD.Types.Bool

    field :oid_tax_mstr, :decimal, primary_key: true

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
