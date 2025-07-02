defmodule Elixir.Conduit.QAD.Table.Sdtd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sdtd_det" do
    field :sdtd_code, :string

    field :sdtd_time, :string

    field :sdtd_mod_userid, :string

    field :sdtd_mod_date, Conduit.QAD.Types.Date

    field :sdtd__user1, :string

    field :sdtd__user2, :string

    field :sdtd__chr01, :string

    field :sdtd__chr02, :string

    field :sdtd__dec01, :decimal

    field :sdtd__dec02, :decimal

    field :sdtd__dte01, Conduit.QAD.Types.Date

    field :sdtd__dte02, Conduit.QAD.Types.Date

    field :sdtd__log01, Conduit.QAD.Types.Bool

    field :sdtd__qadc01, :string

    field :sdtd__qadc02, :string

    field :sdtd__qadd01, :decimal

    field :sdtd__qadd02, :decimal

    field :sdtd__qadt01, Conduit.QAD.Types.Date

    field :sdtd__qadt02, Conduit.QAD.Types.Date

    field :sdtd__qadl01, Conduit.QAD.Types.Bool

    field :sdtd__qadl02, Conduit.QAD.Types.Bool

    field :sdtd__qadi01, :integer

    field :sdtd__qadi02, :integer

    field :sdtd_domain, :string

    field :oid_sdtd_det, :decimal, primary_key: true

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
