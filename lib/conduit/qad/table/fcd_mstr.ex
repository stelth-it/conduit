defmodule Elixir.Conduit.QAD.Table.Fcd_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fcd_mstr" do
    field :fcd_sv_code, :string

    field :fcd_ca_int_type, :string

    field :fcd_eu_type, :string

    field :fcd_fsc_code, :string

    field :fcd_fcg_covered, :string

    field :fcd_fcg_billable, :string

    field :fcd_fcg_fixed, :string

    field :fcd_user1, :string

    field :fcd_user2, :string

    field :fcd_mod_date, Conduit.QAD.Types.Date

    field :fcd_mod_userid, :string

    field :fcd__chr01, :string

    field :fcd__chr02, :string

    field :fcd__int01, :integer

    field :fcd__dec01, :decimal

    field :fcd__dte01, Conduit.QAD.Types.Date

    field :fcd__qadc01, :string

    field :fcd__qadc02, :string

    field :fcd__qadt01, Conduit.QAD.Types.Date

    field :fcd__qadd01, :decimal

    field :fcd__qadi01, :integer

    field :fcd__log01, Conduit.QAD.Types.Bool

    field :fcd__qadl01, Conduit.QAD.Types.Bool

    field :fcd_fcg_contract, :string

    field :fcd_fcg_warranty, :string

    field :fcd_domain, :string

    field :oid_fcd_mstr, :decimal, primary_key: true

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
