defmodule Elixir.Conduit.QAD.Table.Sd_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sd_mstr" do
    field :sd_amt, :decimal

    field :sd_curr, :string

    field :sd_type, :string

    field :sd_disc_pct, :decimal

    field :sd_acct, :string

    field :sd_cc, :string

    field :sd_cust, :string

    field :sd_ls_type, :string

    field :sd_prodline, :string

    field :sd_start, Conduit.QAD.Types.Date

    field :sd_expire, Conduit.QAD.Types.Date

    field :sd__chr01, :string

    field :sd__qad01, :string

    field :sd__qad02, :string

    field :sd__chr02, :string

    field :sd_user1, :string

    field :sd_user2, :string

    field :sd_sub, :string

    field :sd_domain, :string

    field :oid_sd_mstr, :decimal, primary_key: true

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
