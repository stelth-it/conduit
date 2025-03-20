defmodule Elixir.Conduit.QAD.Table.Dom_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dom_mstr" do
    field :dom_domain, :string

    field :dom_name, :string

    field :dom_type, :string

    field :dom_mod_userid, :string

    field :dom_mod_date, Conduit.QAD.Types.Date

    field :dom_user1, :string

    field :dom_user2, :string

    field :dom__qadc01, :string

    field :dom__qadc02, :string

    field :dom_sname, :string

    field :dom_db, :string

    field :dom_active, Conduit.QAD.Types.Bool

    field :oid_dom_mstr, :decimal, primary_key: true

    field :dom_data_cpg, :string

    field :dom_expt_lst, :string

    field :dom_tzdb, :string

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
