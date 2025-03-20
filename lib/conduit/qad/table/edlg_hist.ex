defmodule Elixir.Conduit.QAD.Table.Edlg_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_edlg_hist" do
    field :edlg_doc_id, :integer

    field :edlg_doc_sufx, :integer

    field :edlg_app_id, :string

    field :edlg_date_sent, Conduit.QAD.Types.Date

    field :edlg_time_sent, :string

    field :edlg_err_stat, :string

    field :edlg_mod_userid, :string

    field :edlg_mod_date, Conduit.QAD.Types.Date

    field :edlg_user1, :string

    field :edlg_user2, :string

    field :edlg__chr01, :string

    field :edlg__chr02, :string

    field :edlg__dec01, :decimal

    field :edlg__dec02, :decimal

    field :edlg__int01, :integer

    field :edlg__int02, :integer

    field :edlg__log01, Conduit.QAD.Types.Bool

    field :edlg__log02, Conduit.QAD.Types.Bool

    field :edlg__dte01, Conduit.QAD.Types.Date

    field :edlg__dte02, Conduit.QAD.Types.Date

    field :edlg__qadc01, :string

    field :edlg__qadc02, :string

    field :edlg__qadc03, :string

    field :edlg__qadc04, :string

    field :edlg__qadd01, :decimal

    field :edlg__qadd02, :decimal

    field :edlg__qadi01, :integer

    field :edlg__qadi02, :integer

    field :edlg__qadl01, Conduit.QAD.Types.Bool

    field :edlg__qadl02, Conduit.QAD.Types.Bool

    field :edlg__qadt01, Conduit.QAD.Types.Date

    field :edlg__qadt02, Conduit.QAD.Types.Date

    field :edlg_domain, :string

    field :oid_edlg_hist, :decimal, primary_key: true

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
