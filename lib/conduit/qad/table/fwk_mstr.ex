defmodule Elixir.Conduit.QAD.Table.Fwk_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fwk_mstr" do
    field :fwk_ca_int_type, :string

    field :fwk_desc, :string

    field :fwk_egs_type, :string

    field :fwk_fcg_code, :string

    field :fwk_fixed_labor, Conduit.QAD.Types.Bool

    field :fwk_fixed_price, Conduit.QAD.Types.Bool

    field :fwk_repair_ctr, Conduit.QAD.Types.Bool

    field :fwk__chr01, :string

    field :fwk__chr02, :string

    field :fwk__chr03, :string

    field :fwk__chr04, :string

    field :fwk__dec01, :decimal

    field :fwk__dec02, :decimal

    field :fwk__dec03, :decimal

    field :fwk__dte01, Conduit.QAD.Types.Date

    field :fwk__dte02, Conduit.QAD.Types.Date

    field :fwk__dte03, Conduit.QAD.Types.Date

    field :fwk__log01, Conduit.QAD.Types.Bool

    field :fwk__log02, Conduit.QAD.Types.Bool

    field :fwk__log03, Conduit.QAD.Types.Bool

    field :fwk__qadc01, :string

    field :fwk__qadc02, :string

    field :fwk__qadc03, :string

    field :fwk__qadc04, :string

    field :fwk__qadd01, Conduit.QAD.Types.Date

    field :fwk__qadd02, Conduit.QAD.Types.Date

    field :fwk__qadd03, Conduit.QAD.Types.Date

    field :fwk__qadde01, :decimal

    field :fwk__qadde02, :decimal

    field :fwk__qadde03, :decimal

    field :fwk__qadl01, Conduit.QAD.Types.Bool

    field :fwk__qadl02, Conduit.QAD.Types.Bool

    field :fwk__qadl03, Conduit.QAD.Types.Bool

    field :fwk_user1, :string

    field :fwk_user2, :string

    field :fwk_mod_userid, :string

    field :fwk_mod_date, :string

    field :fwk_domain, :string

    field :oid_fwk_mstr, :decimal, primary_key: true

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
