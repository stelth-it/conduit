defmodule Elixir.Conduit.QAD.Table.Cp_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cp_mstr" do
    field :cp_cust, :string

    field :cp_part, :string

    field :cp_cust_part, :string

    field :cp_comment, :string

    field :cp_user1, :string

    field :cp_user2, :string

    field :cp_userid, :string

    field :cp_mod_date, Conduit.QAD.Types.Date

    field :cp_pkg_code, :string

    field :cp_cust_eco, :string

    field :cp_cust_partd, :string

    field :cp__qadc01, :string

    field :cp_domain, :string

    field :oid_cp_mstr, :decimal, primary_key: true

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
