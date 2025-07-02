defmodule Elixir.Conduit.QAD.Table.Ctd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ctd_det" do
    field :ctd_code, :string

    field :ctd_date_cd, :string

    field :ctd_pct_due, :decimal

    field :ctd_seq, :integer

    field :ctd_user1, :string

    field :ctd_user2, :string

    field :ctd__qadc01, :string

    field :ctd_domain, :string

    field :oid_ctd_det, :decimal, primary_key: true

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
