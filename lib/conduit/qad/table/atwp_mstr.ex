defmodule Elixir.Conduit.QAD.Table.Atwp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atwp_mstr" do
    field :oid_atwp_mstr, :decimal, primary_key: true

    field :oid_att_mstr, :decimal, primary_key: true

    field :atwp_profile_type, :string

    field :atwp_collection, :string

    field :atwp_audit_active, Conduit.QAD.Types.Bool

    field :atwp_filter_criteria, :string

    field :atwp_all_fields, Conduit.QAD.Types.Bool

    field :atwp_mod_date, Conduit.QAD.Types.Date

    field :atwp_mod_userid, :string

    field :atwp_user1, :string

    field :atwp_user2, :string

    field :atwp__qadc01, :string

    field :atwp__qadc02, :string

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
