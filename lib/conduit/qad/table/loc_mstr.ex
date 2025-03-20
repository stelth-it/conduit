defmodule Elixir.Conduit.QAD.Table.Loc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_loc_mstr" do
    field :loc_loc, :string

    field :loc__qad01, Conduit.QAD.Types.Bool

    field :loc_date, Conduit.QAD.Types.Date

    field :loc_perm, Conduit.QAD.Types.Bool

    field :loc__qadc01, :string

    field :loc__qadc02, :string

    field :loc_project, :string

    field :loc_site, :string

    field :loc_status, :string

    field :loc_user1, :string

    field :loc_user2, :string

    field :loc_single, Conduit.QAD.Types.Bool

    field :loc_type, :string

    field :loc_cap, :decimal

    field :loc_cap_um, :string

    field :loc_desc, :string

    field :loc_phys_addr, :string

    field :loc_xfer_ownership, Conduit.QAD.Types.Bool

    field :loc_domain, :string

    field :oid_loc_mstr, :decimal, primary_key: true

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
