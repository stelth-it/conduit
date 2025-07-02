defmodule Elixir.Conduit.QAD.Table.Fsc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fsc_mstr" do
    field :fsc_code, :string

    field :fsc_con_parts, Conduit.QAD.Types.Bool

    field :fsc_customer, Conduit.QAD.Types.Bool

    field :fsc_cus_non_prod, Conduit.QAD.Types.Bool

    field :fsc_desc, :string

    field :fsc_exg_parts, Conduit.QAD.Types.Bool

    field :fsc_expense, Conduit.QAD.Types.Bool

    field :fsc_fis_column, :integer

    field :fsc_fis_sort, :string

    field :fsc_labor, Conduit.QAD.Types.Bool

    field :fsc_non_prod, Conduit.QAD.Types.Bool

    field :fsc_other, Conduit.QAD.Types.Bool

    field :fsc_parts, Conduit.QAD.Types.Bool

    field :fsc_sick, Conduit.QAD.Types.Bool

    field :fsc_training, Conduit.QAD.Types.Bool

    field :fsc_travel_exp, Conduit.QAD.Types.Bool

    field :fsc_travel_labor, Conduit.QAD.Types.Bool

    field :fsc_vacation, Conduit.QAD.Types.Bool

    field :fsc__chr01, :string

    field :fsc__chr02, :string

    field :fsc__chr03, :string

    field :fsc__chr04, :string

    field :fsc__dec01, :decimal

    field :fsc__dec02, :decimal

    field :fsc__dec03, :decimal

    field :fsc__dte01, Conduit.QAD.Types.Date

    field :fsc__dte02, Conduit.QAD.Types.Date

    field :fsc__dte03, Conduit.QAD.Types.Date

    field :fsc__log01, Conduit.QAD.Types.Bool

    field :fsc__log02, Conduit.QAD.Types.Bool

    field :fsc__log03, Conduit.QAD.Types.Bool

    field :fsc__qadc01, :string

    field :fsc__qadc02, :string

    field :fsc__qadc03, :string

    field :fsc__qadc04, :string

    field :fsc__qadd01, Conduit.QAD.Types.Date

    field :fsc__qadd02, Conduit.QAD.Types.Date

    field :fsc__qadd03, Conduit.QAD.Types.Date

    field :fsc__qadde01, :decimal

    field :fsc__qadde02, :decimal

    field :fsc__qadde03, :decimal

    field :fsc__qadl01, Conduit.QAD.Types.Bool

    field :fsc__qadl02, Conduit.QAD.Types.Bool

    field :fsc__qadl03, Conduit.QAD.Types.Bool

    field :fsc_user1, :string

    field :fsc_user2, :string

    field :fsc_lbr_rate, :decimal

    field :fsc_bdn_pct, :decimal

    field :fsc_bdn_rate, :decimal

    field :fsc_taxc, :string

    field :fsc_taxable, Conduit.QAD.Types.Bool

    field :fsc_domain, :string

    field :oid_fsc_mstr, :decimal, primary_key: true

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
