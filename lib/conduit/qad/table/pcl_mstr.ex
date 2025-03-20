defmodule Elixir.Conduit.QAD.Table.Pcl_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pcl_mstr" do
    field :pcl_group, :string

    field :pcl_type, :string

    field :pcl_desc, :string

    field :pcl_user1, :string

    field :pcl_user2, :string

    field :pcl_mod_date, Conduit.QAD.Types.Date

    field :pcl_userid, :string

    field :pcl_index, :integer

    field :pcl_bsn_unit, :integer

    field :pcl__qadc01, :string

    field :pcl_domain, :string

    field :oid_pcl_mstr, :decimal, primary_key: true

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
