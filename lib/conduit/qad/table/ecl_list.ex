defmodule Elixir.Conduit.QAD.Table.Ecl_list do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecl_list" do
    field :ecl_group, :string

    field :ecl_type, :string

    field :ecl_id, :string

    field :ecl_dev, :string

    field :ecl_copies, :integer

    field :ecl_desc, :string

    field :ecl_user1, :string

    field :ecl_user2, :string

    field :ecl__qad01, Conduit.QAD.Types.Bool

    field :ecl__qad02, Conduit.QAD.Types.Date

    field :ecl__qad03, :string

    field :ecl__qad04, :string

    field :ecl__qad05, :string

    field :ecl_mod_date, Conduit.QAD.Types.Date

    field :ecl_userid, :string

    field :ecl_domain, :string

    field :oid_ecl_list, :decimal, primary_key: true

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
