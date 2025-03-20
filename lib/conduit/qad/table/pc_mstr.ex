defmodule Elixir.Conduit.QAD.Table.Pc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pc_mstr" do
    field :pc_list, :string

    field :pc_prod_line, :string

    field :pc_part, :string

    field :pc_um, :string

    field :pc_start, Conduit.QAD.Types.Date

    field :pc_expire, Conduit.QAD.Types.Date

    field :pc_amt_type, :string

    field :pc__qad02, :string

    field :pc_min_qty, {:array, :decimal}

    field :pc_amt, {:array, :decimal}

    field :pc_curr, :string

    field :pc_tax_in, Conduit.QAD.Types.Bool

    field :pc__qad01, :decimal

    field :pc_user1, :string

    field :pc_user2, :string

    field :pc_mod_date, Conduit.QAD.Types.Date

    field :pc_userid, :string

    field :pc_min_price, :decimal

    field :pc_max_price, {:array, :decimal}

    field :pc_domain, :string

    field :oid_pc_mstr, :decimal, primary_key: true

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
