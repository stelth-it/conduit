defmodule Elixir.Conduit.QAD.Table.Ect_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ect_mstr" do
    field :ect_desc, :string

    field :ect_dsgn_grp, :string

    field :ect_approval, :string

    field :ect_distr, :string

    field :ect_prefix, :string

    field :ect_dc_warn, :integer

    field :ect_type, :string

    field :ect_user1, :string

    field :ect_user2, :string

    field :ect__qad01, Conduit.QAD.Types.Bool

    field :ect__qad02, Conduit.QAD.Types.Date

    field :ect__qad03, :string

    field :ect__qad04, :string

    field :ect__qad05, :string

    field :ect_mod_date, Conduit.QAD.Types.Date

    field :ect_userid, :string

    field :ect_doc_type, :string

    field :ect_secure_text, :string

    field :ect_secure_item, :string

    field :ect_secure_stct, :string

    field :ect_secure_routing, :string

    field :ect_secure_admn, :string

    field :ect_seqrev_off, Conduit.QAD.Types.Bool

    field :ect_domain, :string

    field :oid_ect_mstr, :decimal, primary_key: true

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
