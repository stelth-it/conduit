defmodule Elixir.Conduit.QAD.Table.Fabch_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fabch_mstr" do
    field :fabch_id, :string

    field :fabch_ctrl, :decimal

    field :fabch_createdt, Conduit.QAD.Types.Date

    field :fabch_mod_userid, :string

    field :fabch_mod_date, Conduit.QAD.Types.Date

    field :fabch_user1, :string

    field :fabch_user2, :string

    field :fabch__chr01, :string

    field :fabch__dec01, :decimal

    field :fabch__log01, Conduit.QAD.Types.Bool

    field :fabch__dte01, Conduit.QAD.Types.Date

    field :fabch__int01, :integer

    field :fabch__qadc01, :string

    field :fabch__qadd01, :decimal

    field :fabch__qadl01, Conduit.QAD.Types.Bool

    field :fabch__qadi01, :integer

    field :fabch__qadt01, Conduit.QAD.Types.Date

    field :fabch_domain, :string

    field :oid_fabch_mstr, :decimal, primary_key: true

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
