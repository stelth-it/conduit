defmodule Elixir.Conduit.QAD.Table.Eng_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_eng_mstr" do
    field :eng_addr, :string

    field :eng_status, :string

    field :eng_location, :string

    field :eng_skills, :string

    field :eng_area, :string

    field :eng_pager, :string

    field :eng_group, :string

    field :eng_labor, :string

    field :eng_cplt_dt, Conduit.QAD.Types.Date

    field :eng_cplt_tm, :integer

    field :eng_sort, :string

    field :eng__chr01, :string

    field :eng__chr02, :string

    field :eng__chr03, :string

    field :eng__chr04, :string

    field :eng__chr05, :string

    field :eng_site, :string

    field :eng_loc, :string

    field :eng__chr06, :string

    field :eng__chr07, :string

    field :eng__chr08, :string

    field :eng__chr09, :string

    field :eng__chr10, :string

    field :eng__dec01, :decimal

    field :eng__dec02, :decimal

    field :eng__dec03, :decimal

    field :eng__dte01, Conduit.QAD.Types.Date

    field :eng__dte02, Conduit.QAD.Types.Date

    field :eng__dte03, Conduit.QAD.Types.Date

    field :eng__dte04, Conduit.QAD.Types.Date

    field :eng__log01, Conduit.QAD.Types.Bool

    field :eng__log02, Conduit.QAD.Types.Bool

    field :eng__log03, Conduit.QAD.Types.Bool

    field :eng__log04, Conduit.QAD.Types.Bool

    field :eng__log05, Conduit.QAD.Types.Bool

    field :eng_site_rtn, :string

    field :eng_loc_rtn, :string

    field :eng_sub, Conduit.QAD.Types.Bool

    field :eng_user1, :string

    field :eng_user2, :string

    field :eng_code, :string

    field :eng_esh_schedule, :string

    field :eng_field, Conduit.QAD.Types.Bool

    field :eng_call_load, :integer

    field :eng_3rd_party, Conduit.QAD.Types.Bool

    field :eng_avail_ot, Conduit.QAD.Types.Bool

    field :eng__qadc01, :string

    field :eng__qadc02, :string

    field :eng__qadd01, Conduit.QAD.Types.Date

    field :eng__qadd02, Conduit.QAD.Types.Date

    field :eng__qadde01, :decimal

    field :eng__qadi01, :integer

    field :eng__qadi02, :integer

    field :eng__qadl01, Conduit.QAD.Types.Bool

    field :eng__qadl02, Conduit.QAD.Types.Bool

    field :eng_mod_userid, :string

    field :eng_mod_date, Conduit.QAD.Types.Date

    field :eng_address, :string

    field :eng_domain, :string

    field :oid_eng_mstr, :decimal, primary_key: true

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
