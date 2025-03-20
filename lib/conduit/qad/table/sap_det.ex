defmodule Elixir.Conduit.QAD.Table.Sap_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sap_det" do
    field :sap_sched_date, Conduit.QAD.Types.Date

    field :sap_prefix, :string

    field :sap_nbr, :string

    field :sap_desc, :string

    field :sap_line, :integer

    field :sap_ca_nbr, :string

    field :sap_act_date, Conduit.QAD.Types.Date

    field :sap_bom_type, :string

    field :sap_user1, :string

    field :sap_user2, :string

    field :sap_confirmed, Conduit.QAD.Types.Bool

    field :sap_group, :string

    field :sap_mrp, Conduit.QAD.Types.Bool

    field :sap_assign, :string

    field :sap_mod_userid, :string

    field :sap_mod_date, Conduit.QAD.Types.Date

    field :sap__qadc01, :string

    field :sap__qadc02, :string

    field :sap__qadd01, Conduit.QAD.Types.Date

    field :sap__qadd02, Conduit.QAD.Types.Date

    field :sap__qadl01, Conduit.QAD.Types.Bool

    field :sap__qadl02, Conduit.QAD.Types.Bool

    field :sap__qadi01, :integer

    field :sap__qadi02, :integer

    field :sap_domain, :string

    field :oid_sap_det, :decimal, primary_key: true

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
