defmodule Elixir.Conduit.QAD.Table.Img_msg do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_img_msg" do
    field :img_app_id, :string

    field :img_doc_id, :integer

    field :img_email_sent, Conduit.QAD.Types.Bool

    field :img_mod_date, Conduit.QAD.Types.Date

    field :img_mod_userid, :string

    field :img_return_code, :string

    field :img_return_txt, :string

    field :img_sev_lvl, :string

    field :img_doc_sufx, :integer

    field :img_prcg_stage, :string

    field :img_user1, :string

    field :img_user2, :string

    field :img__dec01, :decimal

    field :img__dec02, :decimal

    field :img__int01, :integer

    field :img__int02, :integer

    field :img__log01, Conduit.QAD.Types.Bool

    field :img__log02, Conduit.QAD.Types.Bool

    field :img__dte01, Conduit.QAD.Types.Date

    field :img__dte02, Conduit.QAD.Types.Date

    field :img__qadc01, :string

    field :img__qadc02, :string

    field :img__qadc03, :string

    field :img__qadc04, :string

    field :img__qadd01, :decimal

    field :img__qadd02, :decimal

    field :img__qadi01, :integer

    field :img__qadi02, :integer

    field :img__qadl01, Conduit.QAD.Types.Bool

    field :img__qadl02, Conduit.QAD.Types.Bool

    field :img__qadt01, Conduit.QAD.Types.Date

    field :img__qadt02, Conduit.QAD.Types.Date

    field :img_domain, :string

    field :oid_img_msg, :decimal, primary_key: true

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
