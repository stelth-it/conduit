defmodule Elixir.Conduit.QAD.Table.Esh_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_esh_mstr" do
    field :esh_status, :string

    field :esh_end_time, {:array, :string}

    field :esh_start_time, {:array, :string}

    field :esh_days, {:array, Conduit.QAD.Types.Bool}

    field :esh_sched_type, :string

    field :esh_schedule, :string

    field :esh_end_eff, Conduit.QAD.Types.Date

    field :esh_start_eff, Conduit.QAD.Types.Date

    field :esh_reg_code, :string

    field :esh_holidays, Conduit.QAD.Types.Bool

    field :esh_oncall, Conduit.QAD.Types.Bool

    field :esh_shift_code, :string

    field :esh_user1, :string

    field :esh_user2, :string

    field :esh_mod_date, Conduit.QAD.Types.Date

    field :esh_mod_userid, :string

    field :esh__chr01, :string

    field :esh__chr02, :string

    field :esh__log01, Conduit.QAD.Types.Bool

    field :esh__log02, Conduit.QAD.Types.Bool

    field :esh__dte01, Conduit.QAD.Types.Date

    field :esh__dte02, Conduit.QAD.Types.Date

    field :esh__qadc01, :string

    field :esh__qadc02, :string

    field :esh__qadl01, Conduit.QAD.Types.Bool

    field :esh__qadl02, Conduit.QAD.Types.Bool

    field :esh__qadt01, Conduit.QAD.Types.Date

    field :esh__qadt02, Conduit.QAD.Types.Date

    field :esh__qadi01, :integer

    field :esh__qadi02, :string

    field :esh_domain, :string

    field :oid_esh_mstr, :decimal, primary_key: true

    field :esh_mid_etime, {:array, :string}

    field :esh_mid_stime, {:array, :string}

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
