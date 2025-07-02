defmodule Elixir.Conduit.QAD.Table.Egw_wkfl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_egw_wkfl" do
    field :egw_week, Conduit.QAD.Types.Date

    field :egw_available, Conduit.QAD.Types.Bool

    field :egw_area, :string

    field :egw_prob, Conduit.QAD.Types.Bool

    field :egw_points, :integer

    field :egw_eng_code, :string

    field :egw_userid, :string

    field :egw_calls, {:array, :string}

    field :egw_tag, Conduit.QAD.Types.Bool

    field :egw_name, :string

    field :egw_avail_hours, {:array, :string}

    field :egw_hours, {:array, :decimal}

    field :egw_ega_recid, :integer

    field :egw_user1, :string

    field :egw_user2, :string

    field :egw_st_time, :string

    field :egw_end_time, :string

    field :egw_overtime, Conduit.QAD.Types.Bool

    field :egw__qadl01, Conduit.QAD.Types.Bool

    field :egw__qadl02, Conduit.QAD.Types.Bool

    field :egw__qadt01, Conduit.QAD.Types.Date

    field :egw_schedule, :string

    field :egw__qadt02, Conduit.QAD.Types.Date

    field :egw__qadc02, :string

    field :egw__qadi01, :integer

    field :egw__qadi02, :integer

    field :egw__qadc03, :string

    field :egw_domain, :string

    field :oid_egw_wkfl, :decimal, primary_key: true

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
