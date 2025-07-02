defmodule Elixir.Conduit.QAD.Table.Csld_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_csld_det" do
    field :csld_ctry_code, :string

    field :csld_auth, :string

    field :csld_licen, :string

    field :csld_part, :string

    field :csld_max_amt, :decimal

    field :csld_max_qty, :integer

    field :csld_tot_amt, :decimal

    field :csld_tot_qty, :integer

    field :csld_curr, :string

    field :csld_cmtindx, :integer

    field :csld_user1, :string

    field :csld_user2, :string

    field :csld__qadc01, :string

    field :csld_domain, :string

    field :oid_csld_det, :decimal, primary_key: true

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
