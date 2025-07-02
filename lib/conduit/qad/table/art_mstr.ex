defmodule Elixir.Conduit.QAD.Table.Art_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_art_mstr" do
    field :art_desc, :string

    field :art_app_id, :string

    field :art_mfg_msg_code, :integer

    field :art_mod_date, Conduit.QAD.Types.Date

    field :art_mod_userid, :string

    field :art_return_code, :string

    field :art_sev_lvl, :string

    field :art_user1, :string

    field :art_user2, :string

    field :art__dec01, :decimal

    field :art__dec02, :decimal

    field :art__int01, :integer

    field :art__int02, :integer

    field :art__log01, Conduit.QAD.Types.Bool

    field :art__log02, Conduit.QAD.Types.Bool

    field :art__dte01, Conduit.QAD.Types.Date

    field :art__dte02, Conduit.QAD.Types.Date

    field :art__qadc01, :string

    field :art__qadc02, :string

    field :art__qadc03, :string

    field :art__qadc04, :string

    field :art__qadd01, :decimal

    field :art__qadd02, :decimal

    field :art__qadi01, :integer

    field :art__qadi02, :integer

    field :art__qadl01, Conduit.QAD.Types.Bool

    field :art__qadl02, Conduit.QAD.Types.Bool

    field :art__qadt01, Conduit.QAD.Types.Date

    field :art__qadt02, Conduit.QAD.Types.Date

    field :art_mthd_name, :string

    field :art_domain, :string

    field :oid_art_mstr, :decimal, primary_key: true

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
