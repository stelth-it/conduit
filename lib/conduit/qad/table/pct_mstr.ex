defmodule Elixir.Conduit.QAD.Table.Pct_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pct_mstr" do
    field :pct_desc, :string

    field :pct_dsgn_grp, :string

    field :pct_approval, :string

    field :pct_distr, :string

    field :pct_prefix, :string

    field :pct_dc_warn, :integer

    field :pct_type, :string

    field :pct_user1, :string

    field :pct_user2, :string

    field :pct__qad01, Conduit.QAD.Types.Bool

    field :pct__qad02, Conduit.QAD.Types.Date

    field :pct__qad03, :string

    field :pct__qad04, :string

    field :pct__qad05, :string

    field :pct_mod_date, Conduit.QAD.Types.Date

    field :pct_userid, :string

    field :pct_secure_text, :string

    field :pct_secure_item, :string

    field :pct_secure_stct, :string

    field :pct_secure_routing, :string

    field :pct_secure_admn, :string

    field :pct_seqrev_off, Conduit.QAD.Types.Bool

    field :pct_doc_type, :string

    field :pct_domain, :string

    field :oid_pct_mstr, :decimal, primary_key: true

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
