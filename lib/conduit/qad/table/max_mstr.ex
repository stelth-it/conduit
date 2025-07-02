defmodule Elixir.Conduit.QAD.Table.Max_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_max_mstr" do
    field :max_field, :string

    field :max_desc, :string

    field :max_beg_date, Conduit.QAD.Types.Date

    field :max_end_date, Conduit.QAD.Types.Date

    field :max_max, :decimal

    field :max_used, :decimal

    field :max_yr_cost, :decimal

    field :max_cost, :decimal

    field :max_reduce, :decimal

    field :max_book, :string

    field :max_class, :string

    field :max_basis, :string

    field :max_basis_yr, :integer

    field :max_mod_date, Conduit.QAD.Types.Date

    field :max_userid, :string

    field :max_table, Conduit.QAD.Types.Bool

    field :max_yr_max, :decimal

    field :max__qad01, :string

    field :max__qad02, :string

    field :max_user1, :string

    field :max_user2, :string

    field :oid_max_mstr, :decimal, primary_key: true

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
