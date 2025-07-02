defmodule Elixir.Conduit.QAD.Table.Ff_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ff_mstr" do
    field :ff_id, :string

    field :ff_user, :string

    field :ff_year, :integer

    field :ff_method, :integer

    field :ff_part, :string

    field :ff_cust, :string

    field :ff_date, Conduit.QAD.Types.Date

    field :ff_time, :integer

    field :ff_his_yr, {:array, :integer}

    field :ff_orig_fc, {:array, :decimal}

    field :ff_adj_fc, {:array, :decimal}

    field :ff_site, :string

    field :ff_user1, :string

    field :ff_user2, :string

    field :ff__qadc01, :string

    field :ff_domain, :string

    field :oid_ff_mstr, :decimal, primary_key: true

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
