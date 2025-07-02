defmodule Elixir.Conduit.QAD.Table.Fa_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fa_mstr" do
    field :fa_id, :string

    field :fa_entity, :string

    field :fa_post, Conduit.QAD.Types.Bool

    field :fa_dep, Conduit.QAD.Types.Bool

    field :fa_desc1, :string

    field :fa_receiver, :string

    field :fa_auth_number, :string

    field :fa_qty, :integer

    field :fa_code, :string

    field :fa_startdt, Conduit.QAD.Types.Date

    field :fa_wardt, Conduit.QAD.Types.Date

    field :fa_disp_dt, Conduit.QAD.Types.Date

    field :fa_disp_rsn, :string

    field :fa_puramt, :decimal

    field :fa_replamt, :decimal

    field :fa_dispamt, :decimal

    field :fa_salvamt, :decimal

    field :fa_custodian, :string

    field :fa_facls_id, :string

    field :fa_parent, :string

    field :fa_vendsrc, :string

    field :fa_po, :string

    field :fa_fabch_id, :string

    field :fa_cmtindx, :integer

    field :fa_ins_co, :string

    field :fa_ins_date, Conduit.QAD.Types.Date

    field :fa_ins_nbr, :string

    field :fa_insamt, :decimal

    field :fa_migrate, Conduit.QAD.Types.Bool

    field :fa_mod_userid, :string

    field :fa_mod_date, Conduit.QAD.Types.Date

    field :fa_user1, :string

    field :fa_user2, :string

    field :fa__chr01, :string

    field :fa__chr02, :string

    field :fa__chr03, :string

    field :fa__chr04, :string

    field :fa__dec01, :decimal

    field :fa__dec02, :decimal

    field :fa__dec03, :decimal

    field :fa__dec04, :decimal

    field :fa__log01, Conduit.QAD.Types.Bool

    field :fa__log02, Conduit.QAD.Types.Bool

    field :fa__log03, Conduit.QAD.Types.Bool

    field :fa__log04, Conduit.QAD.Types.Bool

    field :fa__dte01, Conduit.QAD.Types.Date

    field :fa__dte02, Conduit.QAD.Types.Date

    field :fa__dte03, Conduit.QAD.Types.Date

    field :fa__dte04, Conduit.QAD.Types.Date

    field :fa__int01, :integer

    field :fa__int02, :integer

    field :fa__int03, :integer

    field :fa__int04, :integer

    field :fa__qadc01, :string

    field :fa__qadd01, :decimal

    field :fa__qadl01, Conduit.QAD.Types.Bool

    field :fa__qadi01, :integer

    field :fa__qadt01, Conduit.QAD.Types.Date

    field :fa_split_from, :string

    field :fa_split_date, Conduit.QAD.Types.Date

    field :fa_faloc_id, :string

    field :fa__qadc02, :string

    field :fa_domain, :string

    field :oid_fa_mstr, :decimal, primary_key: true

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
