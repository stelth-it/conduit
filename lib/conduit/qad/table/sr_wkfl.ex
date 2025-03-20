defmodule Elixir.Conduit.QAD.Table.Sr_wkfl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sr_wkfl" do
    field :sr_userid, :string

    field :sr_lineid, :string

    field :sr_loc, :string

    field :sr_lotser, :string

    field :sr_qty, :decimal

    field :sr_assay, :decimal

    field :sr_expire, Conduit.QAD.Types.Date

    field :sr_site, :string

    field :sr_user1, :string

    field :sr_user2, :string

    field :sr_ref, :string

    field :sr_rev, :string

    field :sr_vend_lot, :string

    field :sr_to_loc, :string

    field :sr_to_site, :string

    field :sr_status, :string

    field :sr__qadc01, :string

    field :sr_domain, :string

    field :oid_sr_wkfl, :decimal, primary_key: true

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
