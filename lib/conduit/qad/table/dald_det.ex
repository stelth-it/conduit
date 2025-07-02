defmodule Elixir.Conduit.QAD.Table.Dald_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dald_det" do
    field :dald_list_id, :string

    field :dald_app_id, :string

    field :dald_eff_dt_in, Conduit.QAD.Types.Date

    field :dald_eff_dt_out, Conduit.QAD.Types.Date

    field :dald_mod_userid, :string

    field :dald_mod_date, Conduit.QAD.Types.Date

    field :dald_user1, :string

    field :dald_user2, :string

    field :dald__chr01, :string

    field :dald__chr02, :string

    field :dald__dec01, :decimal

    field :dald__dec02, :decimal

    field :dald__int01, :integer

    field :dald__int02, :integer

    field :dald__log01, Conduit.QAD.Types.Bool

    field :dald__log02, Conduit.QAD.Types.Bool

    field :dald__dte01, Conduit.QAD.Types.Date

    field :dald__dte02, Conduit.QAD.Types.Date

    field :dald__qadc01, :string

    field :dald__qadc02, :string

    field :dald__qadc03, :string

    field :dald__qadc04, :string

    field :dald__qadd01, :decimal

    field :dald__qadd02, :decimal

    field :dald__qadi01, :integer

    field :dald__qadi02, :integer

    field :dald__qadl01, Conduit.QAD.Types.Bool

    field :dald__qadl02, Conduit.QAD.Types.Bool

    field :dald__qadt01, Conduit.QAD.Types.Date

    field :dald__qadt02, Conduit.QAD.Types.Date

    field :dald_domain, :string

    field :oid_dald_det, :decimal, primary_key: true

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
