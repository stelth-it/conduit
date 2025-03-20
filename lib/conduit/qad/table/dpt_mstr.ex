defmodule Elixir.Conduit.QAD.Table.Dpt_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dpt_mstr" do
    field :dpt_dept, :string

    field :dpt_desc, :string

    field :dpt_bvar_acc, :string

    field :dpt_bvar_cc, :string

    field :dpt_bvrr_acc, :string

    field :dpt_bvrr_cc, :string

    field :dpt__qadc03, :string

    field :dpt__qadc04, :string

    field :dpt__qadc07, :string

    field :dpt__qadc08, :string

    field :dpt_lvrr_acc, :string

    field :dpt_lvrr_cc, :string

    field :dpt__qadc01, :string

    field :dpt__qadc02, :string

    field :dpt_lbr_acct, :string

    field :dpt_lbr_cc, :string

    field :dpt_bdn_acct, :string

    field :dpt_bdn_cc, :string

    field :dpt_lvar_acc, :string

    field :dpt_lvar_cc, :string

    field :dpt__qadc05, :string

    field :dpt__qadc06, :string

    field :dpt_lbr_cap, :integer

    field :dpt_cop_acct, :string

    field :dpt_cop_cc, :string

    field :dpt_user1, :string

    field :dpt_user2, :string

    field :dpt__chr01, :string

    field :dpt__chr02, :string

    field :dpt__chr03, :string

    field :dpt__chr04, :string

    field :dpt__chr05, :string

    field :dpt__dte01, Conduit.QAD.Types.Date

    field :dpt__dte02, Conduit.QAD.Types.Date

    field :dpt__dec01, :decimal

    field :dpt__dec02, :decimal

    field :dpt__log01, Conduit.QAD.Types.Bool

    field :dpt_mod_date, Conduit.QAD.Types.Date

    field :dpt_userid, :string

    field :dpt_bdn_sub, :string

    field :dpt_bvar_sub, :string

    field :dpt_bvrr_sub, :string

    field :dpt_cop_sub, :string

    field :dpt_lbr_sub, :string

    field :dpt_lvar_sub, :string

    field :dpt_lvrr_sub, :string

    field :dpt_domain, :string

    field :oid_dpt_mstr, :decimal, primary_key: true

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
