defmodule Elixir.Conduit.QAD.Table.Ccc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ccc_ctrl" do
    field :ccc__qadi02, :integer

    field :ccc_cc_appserver_name, :string

    field :ccc_cc_hold_status, :string

    field :ccc_cc_auth_exp_days, :integer

    field :ccc_cc_auto_capture, Conduit.QAD.Types.Bool

    field :ccc_mod_userid, :string

    field :ccc_mod_date, Conduit.QAD.Types.Date

    field :ccc_user1, :string

    field :ccc_user2, :string

    field :ccc__qadc01, :string

    field :ccc__qadi01, :integer

    field :ccc__qadd01, :decimal

    field :ccc__qadl01, Conduit.QAD.Types.Bool

    field :ccc__qadt01, Conduit.QAD.Types.Date

    field :ccc__qadc02, :string

    field :ccc__qadc03, :string

    field :ccc__qadc04, :string

    field :ccc__qadc05, :string

    field :ccc_domain, :string

    field :oid_ccc_ctrl, :decimal, primary_key: true

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
