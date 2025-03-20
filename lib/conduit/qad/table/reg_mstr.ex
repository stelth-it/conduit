defmodule Elixir.Conduit.QAD.Table.Reg_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_reg_mstr" do
    field :reg_code, :string

    field :reg_type, :string

    field :reg_desc, :string

    field :reg__chr01, :string

    field :reg__chr02, :string

    field :reg__chr03, :string

    field :reg__dec01, :decimal

    field :reg__dec02, :decimal

    field :reg__dte01, Conduit.QAD.Types.Date

    field :reg__dte02, Conduit.QAD.Types.Date

    field :reg__log01, Conduit.QAD.Types.Bool

    field :reg__log02, Conduit.QAD.Types.Bool

    field :reg_user1, :string

    field :reg_user2, :string

    field :reg_loc, :string

    field :reg_time_zone, :integer

    field :reg_site, :string

    field :reg_repair, Conduit.QAD.Types.Bool

    field :reg_3rd_party, Conduit.QAD.Types.Bool

    field :reg_lang, :string

    field :reg_prod_line, :string

    field :reg_site_rtn, :string

    field :reg_loc_rtn, :string

    field :reg_wkctr, :string

    field :reg_project, :string

    field :reg__qadc05, :string

    field :reg__qadc04, :string

    field :reg_mod_date, Conduit.QAD.Types.Date

    field :reg_mod_userid, :string

    field :reg__qadc01, :string

    field :reg__qadc02, :string

    field :reg__qadc03, :string

    field :reg__qadl01, Conduit.QAD.Types.Bool

    field :reg__qadl02, Conduit.QAD.Types.Bool

    field :reg__qadt01, Conduit.QAD.Types.Date

    field :reg__qade01, :decimal

    field :reg_domain, :string

    field :oid_reg_mstr, :decimal, primary_key: true

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
