defmodule Elixir.Conduit.QAD.Table.Egd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_egd_det" do
    field :egd_status, :string

    field :egd_sched_type, :string

    field :egd_days, {:array, Conduit.QAD.Types.Bool}

    field :egd_end_time, {:array, :string}

    field :egd_end_eff, Conduit.QAD.Types.Date

    field :egd_start_time, {:array, :string}

    field :egd_start_eff, Conduit.QAD.Types.Date

    field :egd_eng_code, :string

    field :egd_esh_schedule, :string

    field :egd_oncall, Conduit.QAD.Types.Bool

    field :egd_holidays, Conduit.QAD.Types.Bool

    field :egd_user1, :string

    field :egd_user2, :string

    field :egd_mod_date, Conduit.QAD.Types.Date

    field :egd_mod_userid, :string

    field :egd__chr01, :string

    field :egd__qadc01, :string

    field :egd__qadc02, :string

    field :egd__log01, Conduit.QAD.Types.Bool

    field :egd__log02, Conduit.QAD.Types.Bool

    field :egd__qadl01, Conduit.QAD.Types.Bool

    field :egd__qadl02, Conduit.QAD.Types.Bool

    field :egd__dte01, Conduit.QAD.Types.Date

    field :egd__qadt01, Conduit.QAD.Types.Date

    field :egd__qadt02, Conduit.QAD.Types.Date

    field :egd__dec01, :decimal

    field :egd__qade01, :decimal

    field :egd_domain, :string

    field :oid_egd_det, :decimal, primary_key: true

    field :egd_mid_etime, {:array, :string}

    field :egd_mid_stime, {:array, :string}

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
