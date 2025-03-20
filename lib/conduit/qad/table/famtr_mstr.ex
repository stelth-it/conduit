defmodule Elixir.Conduit.QAD.Table.Famtr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_famtr_mstr" do
    field :famtr_id, :string

    field :famtr_desc, :string

    field :famtr_init, :integer

    field :famtr_initdt, Conduit.QAD.Types.Date

    field :famtr_rollover, :integer

    field :famtr_mod_userid, :string

    field :famtr_mod_date, Conduit.QAD.Types.Date

    field :famtr_user1, :string

    field :famtr_user2, :string

    field :famtr__chr01, :string

    field :famtr__dec01, :decimal

    field :famtr__log01, Conduit.QAD.Types.Bool

    field :famtr__dte01, Conduit.QAD.Types.Date

    field :famtr__int01, :integer

    field :famtr__qadc01, :string

    field :famtr__qadd01, :decimal

    field :famtr__qadl01, Conduit.QAD.Types.Bool

    field :famtr__qadi01, :integer

    field :famtr__qadt01, Conduit.QAD.Types.Date

    field :famtr_domain, :string

    field :oid_famtr_mstr, :decimal, primary_key: true

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
