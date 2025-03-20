defmodule Elixir.Conduit.QAD.Table.Syp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_syp_mstr" do
    field :syp_profl_id, :string

    field :syp_profl_desc, :string

    field :syp_dbname, :string

    field :syp_tblname, :string

    field :syp_publ_proc, :string

    field :syp_exp_dump, Conduit.QAD.Types.Bool

    field :syp_exp_add, Conduit.QAD.Types.Bool

    field :syp_add_as_chg, Conduit.QAD.Types.Bool

    field :syp_exp_del, Conduit.QAD.Types.Bool

    field :syp_del_as_chg, Conduit.QAD.Types.Bool

    field :syp_exp_chg, Conduit.QAD.Types.Bool

    field :syp_flt_crit, {:array, :string}

    field :syp_mod_userid, :string

    field :syp_mod_date, Conduit.QAD.Types.Date

    field :syp_user1, :string

    field :syp_user2, :string

    field :syp__chr01, :string

    field :syp__chr02, :string

    field :syp__dec01, :decimal

    field :syp__dec02, :decimal

    field :syp__int01, :integer

    field :syp__int02, :integer

    field :syp__log01, Conduit.QAD.Types.Bool

    field :syp__log02, Conduit.QAD.Types.Bool

    field :syp__dte01, Conduit.QAD.Types.Date

    field :syp__dte02, Conduit.QAD.Types.Date

    field :syp__qadc01, :string

    field :syp__qadc02, :string

    field :syp__qadc03, :string

    field :syp__qadc04, :string

    field :syp__qadd01, :decimal

    field :syp__qadd02, :decimal

    field :syp__qadi01, :integer

    field :syp__qadi02, :integer

    field :syp__qadl01, Conduit.QAD.Types.Bool

    field :syp__qadl02, Conduit.QAD.Types.Bool

    field :syp__qadt01, Conduit.QAD.Types.Date

    field :syp__qadt02, Conduit.QAD.Types.Date

    field :syp_exp_rowid_only, Conduit.QAD.Types.Bool

    field :oid_syp_mstr, :decimal, primary_key: true

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
