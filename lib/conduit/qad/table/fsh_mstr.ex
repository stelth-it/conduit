defmodule Elixir.Conduit.QAD.Table.Fsh_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fsh_mstr" do
    field :fsh_desc, :string

    field :fsh_code, :string

    field :fsh_covered, Conduit.QAD.Types.Bool

    field :fsh_code_field, :string

    field :fsh_date, Conduit.QAD.Types.Date

    field :fsh_user1, :string

    field :fsh_user2, :string

    field :fsh__qadc01, :string

    field :fsh_domain, :string

    field :oid_fsh_mstr, :decimal, primary_key: true

    field :fsh_start_time, :string

    field :fsh_end_time, :string

    field :fsh_rsn_code, :string

    field :fsh_full_day, Conduit.QAD.Types.Bool

    field :fsh_addr_line1, :string

    field :fsh_addr_line2, :string

    field :fsh_addr_line3, :string

    field :fsh_country, :string

    field :fsh_state, :string

    field :fsh_city, :string

    field :fsh_county, :string

    field :fsh_zip, :string

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
