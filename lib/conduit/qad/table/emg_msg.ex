defmodule Elixir.Conduit.QAD.Table.Emg_msg do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_emg_msg" do
    field :emg_app_id, :string

    field :emg_doc_id, :integer

    field :emg_email_sent, Conduit.QAD.Types.Bool

    field :emg_mod_date, Conduit.QAD.Types.Date

    field :emg_mod_userid, :string

    field :emg_return_code, :string

    field :emg_return_txt, :string

    field :emg_sev_lvl, :string

    field :emg_doc_sufx, :integer

    field :emg_prcg_stage, :string

    field :emg_user1, :string

    field :emg_user2, :string

    field :emg__dec01, :decimal

    field :emg__dec02, :decimal

    field :emg__int01, :integer

    field :emg__int02, :integer

    field :emg__log01, Conduit.QAD.Types.Bool

    field :emg__log02, Conduit.QAD.Types.Bool

    field :emg__dte01, Conduit.QAD.Types.Date

    field :emg__dte02, Conduit.QAD.Types.Date

    field :emg__qadc01, :string

    field :emg__qadc02, :string

    field :emg__qadc03, :string

    field :emg__qadc04, :string

    field :emg__qadd01, :decimal

    field :emg__qadd02, :decimal

    field :emg__qadi01, :integer

    field :emg__qadi02, :integer

    field :emg__qadl01, Conduit.QAD.Types.Bool

    field :emg__qadl02, Conduit.QAD.Types.Bool

    field :emg__qadt01, Conduit.QAD.Types.Date

    field :emg__qadt02, Conduit.QAD.Types.Date

    field :emg_domain, :string

    field :oid_emg_msg, :decimal, primary_key: true

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
