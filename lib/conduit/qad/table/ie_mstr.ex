defmodule Elixir.Conduit.QAD.Table.Ie_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ie_mstr" do
    field :ie_incl_memo, Conduit.QAD.Types.Bool

    field :ie_mode_transp, :string

    field :ie_nat_trans, :string

    field :ie_nbr, :string

    field :ie_port_arrdisp, :string

    field :ie_port_transh, :string

    field :ie_stat_proc, :string

    field :ie_terms_deliv, :string

    field :ie_type, :string

    field :ie_userid, :string

    field :ie_mod_date, Conduit.QAD.Types.Date

    field :ie_region, :string

    field :ie_ctry_desdisp, :string

    field :ie__chr01, :string

    field :ie__chr02, :string

    field :ie__chr03, :string

    field :ie__chr04, :string

    field :ie__chr05, :string

    field :ie__log01, Conduit.QAD.Types.Bool

    field :ie__log02, Conduit.QAD.Types.Bool

    field :ie__qadc01, :string

    field :ie__qadc02, :string

    field :ie__qadc03, :string

    field :ie__qadc04, :string

    field :ie__qadc05, :string

    field :ie__qadl01, Conduit.QAD.Types.Bool

    field :ie__qadl02, Conduit.QAD.Types.Bool

    field :ie_user1, :string

    field :ie_user2, :string

    field :ie_correction, Conduit.QAD.Types.Bool

    field :ie_orig_doc, :string

    field :ie_orig_year, :integer

    field :ie_orig_month, :integer

    field :ie_affiliation, :string

    field :ie_domain, :string

    field :oid_ie_mstr, :decimal, primary_key: true

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
