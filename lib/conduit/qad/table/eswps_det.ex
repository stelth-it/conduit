defmodule Elixir.Conduit.QAD.Table.Eswps_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eswps_det" do
    field :oid_eswps_det, :decimal, primary_key: true

    field :oid_eswp_mstr, :decimal, primary_key: true

    field :oid_eswps_det_parent, :decimal, primary_key: true

    field :eswps_order, :integer

    field :eswps_include, Conduit.QAD.Types.Bool

    field :eswps_table_name, :string

    field :eswps_code, :string

    field :eswps_multiple, Conduit.QAD.Types.Bool

    field :eswps_mod_date, Conduit.QAD.Types.Date

    field :eswps_mod_userid, :string

    field :eswps_user1, :string

    field :eswps_user2, :string

    field :eswps__qadc01, :string

    field :eswps__qadc02, :string

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
