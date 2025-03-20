defmodule Elixir.Conduit.QAD.Table.Cdf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cdf_mstr" do
    field :cdf_part, :string

    field :cdf_desc, :string

    field :cdf_ca_category, :string

    field :cdf_model, :string

    field :cdf_ca_int_type, :string

    field :cdf_ca_status, :string

    field :cdf_ca_nxtsts, :string

    field :cdf_ca_pri, :integer

    field :cdf_ca_severity, :string

    field :cdf_ca_que, :string

    field :cdf_ca_desc, :string

    field :cdf_ca_prob, :string

    field :cdf_ca_type, :string

    field :cdf_group, :string

    field :cdf_user1, :string

    field :cdf_user2, :string

    field :cdf_exec, :string

    field :cdf_status_type, :string

    field :cdf__chr01, :string

    field :cdf__chr02, :string

    field :cdf__chr03, :string

    field :cdf__chr04, :string

    field :cdf__dec01, :decimal

    field :cdf__dec02, :decimal

    field :cdf__dec03, :decimal

    field :cdf__dte01, Conduit.QAD.Types.Date

    field :cdf__dte02, Conduit.QAD.Types.Date

    field :cdf__dte03, Conduit.QAD.Types.Date

    field :cdf__log01, Conduit.QAD.Types.Bool

    field :cdf__log02, Conduit.QAD.Types.Bool

    field :cdf__log03, Conduit.QAD.Types.Bool

    field :cdf__qadc01, :string

    field :cdf__qadc02, :string

    field :cdf__qadc03, :string

    field :cdf__qadc04, :string

    field :cdf__qadd01, Conduit.QAD.Types.Date

    field :cdf__qadd02, Conduit.QAD.Types.Date

    field :cdf__qadd03, Conduit.QAD.Types.Date

    field :cdf__qadde01, :decimal

    field :cdf__qadde02, :decimal

    field :cdf__qadde03, :decimal

    field :cdf__qadl01, Conduit.QAD.Types.Bool

    field :cdf__qadl02, Conduit.QAD.Types.Bool

    field :cdf__qadl03, Conduit.QAD.Types.Bool

    field :cdf_ca_es_nbr, :string

    field :cdf_est_time, :string

    field :cdf_mod_userid, :string

    field :cdf_mod_date, Conduit.QAD.Types.Date

    field :cdf_domain, :string

    field :oid_cdf_mstr, :decimal, primary_key: true

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
