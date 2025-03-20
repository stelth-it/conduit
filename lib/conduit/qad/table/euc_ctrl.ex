defmodule Elixir.Conduit.QAD.Table.Euc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_euc_ctrl" do
    field :euc_nbr, :integer

    field :euc_user1, :string

    field :euc_user2, :string

    field :euc__qadi02, :integer

    field :euc_mod_userid, :string

    field :euc_mod_date, Conduit.QAD.Types.Date

    field :euc__chr01, :string

    field :euc__int01, :integer

    field :euc__dte01, Conduit.QAD.Types.Date

    field :euc__log01, Conduit.QAD.Types.Bool

    field :euc__qadc01, :string

    field :euc__qadi01, :integer

    field :euc__qadt01, Conduit.QAD.Types.Date

    field :euc__qadl01, Conduit.QAD.Types.Bool

    field :euc_create_isb, Conduit.QAD.Types.Bool

    field :euc__qadl02, Conduit.QAD.Types.Bool

    field :euc_domain, :string

    field :oid_euc_ctrl, :decimal, primary_key: true

    field :euc_schedule, :string

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
