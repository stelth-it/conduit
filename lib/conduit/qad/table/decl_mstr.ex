defmodule Elixir.Conduit.QAD.Table.Decl_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_decl_mstr" do
    field :decl_addr, :string

    field :decl_agent, :string

    field :decl_branch, :string

    field :decl_ctry_code, :string

    field :decl_curr, :string

    field :decl_program, :string

    field :decl_ex_ratetype, :string

    field :decl_region, :string

    field :decl_mod_date, Conduit.QAD.Types.Date

    field :decl_mod_userid, :string

    field :decl_affiliation, :string

    field :decl_user1, :string

    field :decl_user2, :string

    field :decl__qadc01, :string

    field :decl__qadc02, :string

    field :decl_net_wt_min, :decimal

    field :decl_domain, :string

    field :oid_decl_mstr, :decimal, primary_key: true

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
