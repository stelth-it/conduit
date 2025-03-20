defmodule Elixir.Conduit.QAD.Table.Sp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sp_mstr" do
    field :sp_addr, :string

    field :sp_territory, :string

    field :sp_comm_pct, :decimal

    field :sp_sort, :string

    field :sp_user1, :string

    field :sp_user2, :string

    field :sp__chr01, :string

    field :sp__chr02, :string

    field :sp__chr03, :string

    field :sp__chr04, :string

    field :sp__chr05, :string

    field :sp__dte01, Conduit.QAD.Types.Date

    field :sp__dte02, Conduit.QAD.Types.Date

    field :sp__dec01, :decimal

    field :sp__dec02, :decimal

    field :sp__log01, Conduit.QAD.Types.Bool

    field :sp_domain, :string

    field :oid_sp_mstr, :decimal, primary_key: true

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
