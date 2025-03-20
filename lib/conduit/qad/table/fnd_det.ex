defmodule Elixir.Conduit.QAD.Table.Fnd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fnd_det" do
    field :fnd_ca_nbr, :string

    field :fnd_comp_date, Conduit.QAD.Types.Date

    field :fnd_ecm_nbr, :string

    field :fnd_nbr, :string

    field :fnd__chr01, :string

    field :fnd__chr02, :string

    field :fnd__chr03, :string

    field :fnd__chr04, :string

    field :fnd__dec01, :decimal

    field :fnd__dec02, :decimal

    field :fnd__dec03, :decimal

    field :fnd__dte01, Conduit.QAD.Types.Date

    field :fnd__dte02, Conduit.QAD.Types.Date

    field :fnd__dte03, Conduit.QAD.Types.Date

    field :fnd__log01, Conduit.QAD.Types.Bool

    field :fnd__log02, Conduit.QAD.Types.Bool

    field :fnd__log03, Conduit.QAD.Types.Bool

    field :fnd__qadc01, :string

    field :fnd__qadc02, :string

    field :fnd__qadc03, :string

    field :fnd__qadc04, :string

    field :fnd__qadt01, Conduit.QAD.Types.Date

    field :fnd__qadt02, Conduit.QAD.Types.Date

    field :fnd__qadt03, Conduit.QAD.Types.Date

    field :fnd__qade01, :decimal

    field :fnd__qade02, :decimal

    field :fnd__qade03, :decimal

    field :fnd__qadl01, Conduit.QAD.Types.Bool

    field :fnd__qadl02, Conduit.QAD.Types.Bool

    field :fnd__qadl03, Conduit.QAD.Types.Bool

    field :fnd_mod_userid, :string

    field :fnd_mod_date, Conduit.QAD.Types.Date

    field :fnd_user1, :string

    field :fnd_user2, :string

    field :fnd_domain, :string

    field :oid_fnd_det, :decimal, primary_key: true

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
