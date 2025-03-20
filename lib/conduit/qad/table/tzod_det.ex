defmodule Elixir.Conduit.QAD.Table.Tzod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_tzod_det" do
    field :tzod_tzone, :string

    field :tzod_std_day, :string

    field :tzod_min, :integer

    field :tzod_hour, :integer

    field :tzod_sday, :integer

    field :tzod_eday, :integer

    field :tzod_month, :integer

    field :tzod_syear, :integer

    field :tzod_eyear, :integer

    field :tzod_wday, :string

    field :tzod_offset, :integer

    field :tzod_desc, :string

    field :tzod_user1, :string

    field :tzod_user2, :string

    field :tzod__chr01, :string

    field :tzod__chr02, :string

    field :tzod__int01, :integer

    field :tzod__int02, :integer

    field :tzod__dte01, Conduit.QAD.Types.Date

    field :tzod__dte02, Conduit.QAD.Types.Date

    field :tzod__log01, Conduit.QAD.Types.Bool

    field :tzod__log02, Conduit.QAD.Types.Bool

    field :tzod__qadc01, :string

    field :tzod__qadc02, :string

    field :tzod__qadi01, :integer

    field :tzod__qadi02, :integer

    field :tzod__qadl01, Conduit.QAD.Types.Bool

    field :tzod__qadl02, Conduit.QAD.Types.Bool

    field :tzod__qadt01, Conduit.QAD.Types.Date

    field :tzod__qadt02, Conduit.QAD.Types.Date

    field :tzod_mod_userid, :string

    field :tzod_mod_date, Conduit.QAD.Types.Date

    field :oid_tzod_det, :decimal, primary_key: true

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
