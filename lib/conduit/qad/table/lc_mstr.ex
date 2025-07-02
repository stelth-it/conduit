defmodule Elixir.Conduit.QAD.Table.Lc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lc_mstr" do
    field :lc_charge, :string

    field :lc_desc, :string

    field :lc_element, :string

    field :lc_taxable, Conduit.QAD.Types.Bool

    field :lc_taxc, :string

    field :lc_apportion_method, :string

    field :lc_close_accruals, Conduit.QAD.Types.Bool

    field :lc_supplier, :string

    field :lc_mod_userid, :string

    field :lc_mod_date, Conduit.QAD.Types.Date

    field :lc_user1, :string

    field :lc_user2, :string

    field :lc__qadc01, :string

    field :lc__qadc02, :string

    field :lc_domain, :string

    field :oid_lc_mstr, :decimal, primary_key: true

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
