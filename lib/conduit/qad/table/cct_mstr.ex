defmodule Elixir.Conduit.QAD.Table.Cct_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cct_mstr" do
    field :cct_charge_type, :string

    field :cct_container_type, Conduit.QAD.Types.Bool

    field :cct_desc1, :string

    field :cct_desc2, :string

    field :cct_desc3, :string

    field :cct_desc4, :string

    field :cct_prgm, :string

    field :cct_mod_userid, :string

    field :cct_mod_date, Conduit.QAD.Types.Date

    field :cct_userc01, :string

    field :cct_userc02, :string

    field :cct__qadc01, :string

    field :cct__qadc02, :string

    field :cct_domain, :string

    field :oid_cct_mstr, :decimal, primary_key: true

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
