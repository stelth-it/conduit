defmodule Elixir.Conduit.QAD.Table.Alm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_alm_mstr" do
    field :alm_lot_grp, :string

    field :alm_site, :string

    field :alm_lead, :string

    field :alm_len, :integer

    field :alm_trail, :string

    field :alm_pgm, :string

    field :alm_userid, :string

    field :alm_date, Conduit.QAD.Types.Date

    field :alm_seq, :decimal

    field :alm_user1, :string

    field :alm_user2, :string

    field :alm__qadc01, :string

    field :alm_domain, :string

    field :oid_alm_mstr, :decimal, primary_key: true

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
