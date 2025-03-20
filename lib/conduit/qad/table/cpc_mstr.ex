defmodule Elixir.Conduit.QAD.Table.Cpc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cpc_mstr" do
    field :cpc_cust, :string

    field :cpc_year, :integer

    field :cpc_type, :string

    field :cpc_desc, :string

    field :cpc_userid, :string

    field :cpc_mod_date, Conduit.QAD.Types.Date

    field :cpc__chr01, :string

    field :cpc__chr02, :string

    field :cpc__chr03, :string

    field :cpc__chr04, :string

    field :cpc__dec01, :decimal

    field :cpc__log01, Conduit.QAD.Types.Bool

    field :cpc_user1, :string

    field :cpc_user2, :string

    field :cpc_domain, :string

    field :oid_cpc_mstr, :decimal, primary_key: true

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
