defmodule Elixir.Conduit.QAD.Table.Fpc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fpc_mstr" do
    field :fpc_amt, {:array, :decimal}

    field :fpc_amt_type, :string

    field :fpc_ca_int_type, :string

    field :fpc_curr, :string

    field :fpc_expire, Conduit.QAD.Types.Date

    field :fpc_fsc_code, :string

    field :fpc_list, :string

    field :fpc_list_type, :string

    field :fpc_max_price, {:array, :decimal}

    field :fpc_min_price, :decimal

    field :fpc_min_qty, {:array, :decimal}

    field :fpc_mod_date, Conduit.QAD.Types.Date

    field :fpc_part, :string

    field :fpc_prod_line, :string

    field :fpc_start, Conduit.QAD.Types.Date

    field :fpc_svc_group, :string

    field :fpc_sv_code, :string

    field :fpc_tax_in, Conduit.QAD.Types.Bool

    field :fpc_um, :string

    field :fpc_userid, :string

    field :fpc__chr01, :string

    field :fpc__chr02, :string

    field :fpc__chr03, :string

    field :fpc__chr04, :string

    field :fpc__dec01, :decimal

    field :fpc__dec02, :decimal

    field :fpc__dec03, :decimal

    field :fpc__dte01, Conduit.QAD.Types.Date

    field :fpc__dte02, Conduit.QAD.Types.Date

    field :fpc__dte03, Conduit.QAD.Types.Date

    field :fpc__log01, Conduit.QAD.Types.Bool

    field :fpc__log02, Conduit.QAD.Types.Bool

    field :fpc__log03, Conduit.QAD.Types.Bool

    field :fpc__qadc01, :string

    field :fpc__qadc02, :string

    field :fpc__qadc03, :string

    field :fpc__qadc04, :string

    field :fpc__qadd01, Conduit.QAD.Types.Date

    field :fpc__qadd02, Conduit.QAD.Types.Date

    field :fpc__qadd03, Conduit.QAD.Types.Date

    field :fpc__qadde01, :decimal

    field :fpc__qadde02, :decimal

    field :fpc__qadde03, :decimal

    field :fpc__qadl01, Conduit.QAD.Types.Bool

    field :fpc__qadl02, Conduit.QAD.Types.Bool

    field :fpc__qadl03, Conduit.QAD.Types.Bool

    field :fpc_user1, :string

    field :fpc_user2, :string

    field :fpc_domain, :string

    field :oid_fpc_mstr, :decimal, primary_key: true

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
