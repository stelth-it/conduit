defmodule Elixir.Conduit.QAD.Table.Grib_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grib_det" do
    field :grib_run_id, :integer

    field :grib_an_code, :string

    field :grib_link_code, :string

    field :grib_link_type, :string

    field :grib_desc, :string

    field :grib_level, :integer

    field :grib_select, Conduit.QAD.Types.Bool

    field :grib_basepage, :integer

    field :grib_pages, :integer

    field :grib_user1, :string

    field :grib_user2, :string

    field :grib__qadc01, :string

    field :grib_domain, :string

    field :oid_grib_det, :decimal, primary_key: true

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
