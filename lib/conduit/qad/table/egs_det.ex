defmodule Elixir.Conduit.QAD.Table.Egs_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_egs_det" do
    field :egs_eng_code, :string

    field :egs_skill, :string

    field :egs_level, :string

    field :egs_cert, Conduit.QAD.Types.Date

    field :egs__chr01, :string

    field :egs__chr02, :string

    field :egs__chr03, :string

    field :egs__dec01, :decimal

    field :egs__dec02, :decimal

    field :egs__dte01, Conduit.QAD.Types.Date

    field :egs__dte02, Conduit.QAD.Types.Date

    field :egs__log01, Conduit.QAD.Types.Bool

    field :egs__log02, Conduit.QAD.Types.Bool

    field :egs_user1, :string

    field :egs_user2, :string

    field :egs_area, :string

    field :egs_type, :string

    field :egs__qadc01, :string

    field :egs__qadc02, :string

    field :egs__qadl01, Conduit.QAD.Types.Bool

    field :egs__qadl02, Conduit.QAD.Types.Bool

    field :egs__qadt01, Conduit.QAD.Types.Date

    field :egs__qadi01, :integer

    field :egs__qade01, :decimal

    field :egs_mod_date, Conduit.QAD.Types.Date

    field :egs_mod_userid, :string

    field :egs_domain, :string

    field :oid_egs_det, :decimal, primary_key: true

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
