defmodule Elixir.Conduit.QAD.Table.Lgsi_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lgsi_det" do
    field :lgsi_app_id, :string

    field :lgsi_site, :string

    field :lgsi_mod_date, Conduit.QAD.Types.Date

    field :lgsi_mod_userid, :string

    field :lgsi_user1, :string

    field :lgsi_user2, :string

    field :lgsi__dec01, :decimal

    field :lgsi__dec02, :decimal

    field :lgsi__int01, :integer

    field :lgsi__int02, :integer

    field :lgsi__log01, Conduit.QAD.Types.Bool

    field :lgsi__log02, Conduit.QAD.Types.Bool

    field :lgsi__dte01, Conduit.QAD.Types.Date

    field :lgsi__dte02, Conduit.QAD.Types.Date

    field :lgsi__qadc01, :string

    field :lgsi__qadc02, :string

    field :lgsi__qadc03, :string

    field :lgsi__qadc04, :string

    field :lgsi__qadd01, :decimal

    field :lgsi__qadd02, :decimal

    field :lgsi__qadi01, :integer

    field :lgsi__qadi02, :integer

    field :lgsi__qadl01, Conduit.QAD.Types.Bool

    field :lgsi__qadl02, Conduit.QAD.Types.Bool

    field :lgsi__qadt01, Conduit.QAD.Types.Date

    field :lgsi__qadt02, Conduit.QAD.Types.Date

    field :lgsi_domain, :string

    field :oid_lgsi_det, :decimal, primary_key: true

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
