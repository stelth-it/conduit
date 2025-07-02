defmodule Elixir.Conduit.QAD.Table.Pac_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pac_mstr" do
    field :pac_code, :string

    field :pac_desc, :string

    field :pac_site, :string

    field :pac_pl, :string

    field :pac_pur_acct, :string

    field :pac_pur_cc, :string

    field :pac_amt, {:array, :decimal}

    field :pac_apr_by, {:array, :string}

    field :pac_req_by, :string

    field :pac_user1, :string

    field :pac_user2, :string

    field :pac_userid, :string

    field :pac_mod_date, Conduit.QAD.Types.Date

    field :pac__qadc01, :string

    field :pac_pur_sub, :string

    field :pac_domain, :string

    field :oid_pac_mstr, :decimal, primary_key: true

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
