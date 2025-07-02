defmodule Elixir.Conduit.QAD.Table.Facld_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_facld_det" do
    field :facld_year, :integer

    field :facld_per, :integer

    field :facld_start, Conduit.QAD.Types.Date

    field :facld_end, Conduit.QAD.Types.Date

    field :facld_facl_id, :string

    field :facld_mod_userid, :string

    field :facld_mod_date, Conduit.QAD.Types.Date

    field :facld_user1, :string

    field :facld_user2, :string

    field :facld__chr01, :string

    field :facld__dec01, :decimal

    field :facld__log01, Conduit.QAD.Types.Bool

    field :facld__dte01, Conduit.QAD.Types.Date

    field :facld__int01, :integer

    field :facld__qadc01, :string

    field :facld__qadd01, :decimal

    field :facld__qadl01, Conduit.QAD.Types.Bool

    field :facld__qadi01, :integer

    field :facld__qadt01, Conduit.QAD.Types.Date

    field :facld_domain, :string

    field :oid_facld_det, :decimal, primary_key: true

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
