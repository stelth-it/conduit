defmodule Elixir.Conduit.QAD.Table.Facl_cal do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_facl_cal" do
    field :facl_id, :string

    field :facl_year, :integer

    field :facl_mod_userid, :string

    field :facl_mod_date, Conduit.QAD.Types.Date

    field :facl_user1, :string

    field :facl_user2, :string

    field :facl__chr01, :string

    field :facl__dec01, :decimal

    field :facl__log01, Conduit.QAD.Types.Bool

    field :facl__dte01, Conduit.QAD.Types.Date

    field :facl__int01, :integer

    field :facl__qadc01, :string

    field :facl__qadd01, :decimal

    field :facl__qadl01, Conduit.QAD.Types.Bool

    field :facl__qadi01, :integer

    field :facl__qadt01, Conduit.QAD.Types.Date

    field :facl_domain, :string

    field :oid_facl_cal, :decimal, primary_key: true

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
