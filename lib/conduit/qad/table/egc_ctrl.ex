defmodule Elixir.Conduit.QAD.Table.Egc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_egc_ctrl" do
    field :egc__qadc05, {:array, :string}

    field :egc_index, :integer

    field :egc__qadc06, {:array, :string}

    field :egc_by_calls, Conduit.QAD.Types.Bool

    field :egc_prim_points, :integer

    field :egc_avail_points, :integer

    field :egc_prob_points, :integer

    field :egc_area_points, :integer

    field :egc_eng_lhr, :string

    field :egc_call_list, :string

    field :egc_user1, :string

    field :egc_user2, :string

    field :egc_hours_display, Conduit.QAD.Types.Bool

    field :egc_tz_limit, Conduit.QAD.Types.Bool

    field :egc_area_limit, Conduit.QAD.Types.Bool

    field :egc_tz_eng_hours, :string

    field :egc_avail_limit, :string

    field :egc__qadi01, :integer

    field :egc_tz_points, :integer

    field :egc__chr01, :string

    field :egc__chr02, :string

    field :egc__int02, :integer

    field :egc__int01, :integer

    field :egc__log01, Conduit.QAD.Types.Bool

    field :egc__log02, Conduit.QAD.Types.Bool

    field :egc_mod_userid, :string

    field :egc_mod_date, Conduit.QAD.Types.Date

    field :egc_prob_limit, Conduit.QAD.Types.Bool

    field :egc_override_opt, Conduit.QAD.Types.Bool

    field :egc__qadc03, :string

    field :egc__qadc04, :string

    field :egc_nbr, :integer

    field :egc__qadc07, :string

    field :egc__qadl05, Conduit.QAD.Types.Bool

    field :egc__qadl06, Conduit.QAD.Types.Bool

    field :egc__qadl07, Conduit.QAD.Types.Bool

    field :egc__qadi04, :integer

    field :egc__qadi05, :integer

    field :egc__qadd01, :decimal

    field :egc__qadd02, :decimal

    field :egc__qadd03, :decimal

    field :egc__qadt01, Conduit.QAD.Types.Date

    field :egc__qadt02, Conduit.QAD.Types.Date

    field :egc__qadt03, Conduit.QAD.Types.Date

    field :egc_domain, :string

    field :oid_egc_ctrl, :decimal, primary_key: true

    field :egc_call_header, Conduit.QAD.Types.Bool

    field :egc_create_visit, Conduit.QAD.Types.Bool

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
