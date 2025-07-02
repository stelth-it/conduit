defmodule Elixir.Conduit.QAD.Table.Cclsc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cclsc_mstr" do
    field :cclsc_shipto, :string

    field :cclsc_part, :string

    field :cclsc_charge_type, :string

    field :cclsc_curr, :string

    field :cclsc_mod_userid, :string

    field :cclsc_mod_date, Conduit.QAD.Types.Date

    field :cclsc_userc01, :string

    field :cclsc_userc02, :string

    field :cclsc__qadc01, :string

    field :cclsc__qadc02, :string

    field :cclsc_domain, :string

    field :oid_cclsc_mstr, :decimal, primary_key: true

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
