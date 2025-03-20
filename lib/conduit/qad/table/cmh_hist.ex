defmodule Elixir.Conduit.QAD.Table.Cmh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cmh_hist" do
    field :cmh_year, :integer

    field :cmh_cust, :string

    field :cmh_tot_sale, :decimal

    field :cmh_tot_cost, :decimal

    field :cmh_user1, :string

    field :cmh_user2, :string

    field :cmh_type, :string

    field :cmh__chr01, :string

    field :cmh__chr02, :string

    field :cmh__chr03, :string

    field :cmh__chr04, :string

    field :cmh__chr05, :string

    field :cmh__chr06, :string

    field :cmh__chr07, :string

    field :cmh__chr08, :string

    field :cmh__chr09, :string

    field :cmh__chr10, :string

    field :cmh__dte01, Conduit.QAD.Types.Date

    field :cmh__dte02, Conduit.QAD.Types.Date

    field :cmh__dec01, :decimal

    field :cmh__dec02, :decimal

    field :cmh__log01, Conduit.QAD.Types.Bool

    field :cmh__log02, Conduit.QAD.Types.Bool

    field :cmh_domain, :string

    field :oid_cmh_hist, :decimal, primary_key: true

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
