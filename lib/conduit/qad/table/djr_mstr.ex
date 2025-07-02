defmodule Elixir.Conduit.QAD.Table.Djr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_djr_mstr" do
    field :djr_acc_skip, Conduit.QAD.Types.Bool

    field :djr_bank, :string

    field :djr_cc1, :string

    field :djr_cc2, :string

    field :djr_code, :string

    field :djr_crit1, :string

    field :djr_crit2, :string

    field :djr_desc, :string

    field :djr_disp_curr, Conduit.QAD.Types.Bool

    field :djr_ent1, :string

    field :djr_ent2, :string

    field :djr_inc_memo, Conduit.QAD.Types.Bool

    field :djr_inc_stat, Conduit.QAD.Types.Bool

    field :djr_mod_userid, :string

    field :djr_mod_date, Conduit.QAD.Types.Date

    field :djr_newpage, Conduit.QAD.Types.Bool

    field :djr_pagenum, :integer

    field :djr_per1, :integer

    field :djr_per2, :integer

    field :djr_sub1, :string

    field :djr_sub2, :string

    field :djr_summary, Conduit.QAD.Types.Bool

    field :djr_title, :string

    field :djr_type, :string

    field :djr_year, :integer

    field :djr_user1, :string

    field :djr_user2, :string

    field :djr_userc03, :string

    field :djr_userc04, :string

    field :djr_userc05, :string

    field :djr_userd01, :decimal

    field :djr_userd02, :decimal

    field :djr_useri01, :integer

    field :djr_useri02, :integer

    field :djr_userl01, Conduit.QAD.Types.Bool

    field :djr_userl02, Conduit.QAD.Types.Bool

    field :djr_usert01, Conduit.QAD.Types.Date

    field :djr_usert02, Conduit.QAD.Types.Date

    field :djr__qadc01, :string

    field :djr__qadc02, :string

    field :djr__qadc03, :string

    field :djr__qadc04, :string

    field :djr__qadc05, :string

    field :djr__qadd01, :decimal

    field :djr__qadd02, :decimal

    field :djr__qadi01, :integer

    field :djr__qadi02, :integer

    field :djr__qadl01, Conduit.QAD.Types.Bool

    field :djr__qadl02, Conduit.QAD.Types.Bool

    field :djr__qadt01, Conduit.QAD.Types.Date

    field :djr__qadt02, Conduit.QAD.Types.Date

    field :djr_domain, :string

    field :oid_djr_mstr, :decimal, primary_key: true

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
