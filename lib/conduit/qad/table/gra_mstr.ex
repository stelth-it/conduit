defmodule Elixir.Conduit.QAD.Table.Gra_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gra_mstr" do
    field :gra_an_code, :string

    field :gra_link, Conduit.QAD.Types.Bool

    field :gra_desc, :string

    field :gra_add_id, :string

    field :gra_add_date, Conduit.QAD.Types.Date

    field :gra_mod_id, :string

    field :gra_mod_date, Conduit.QAD.Types.Date

    field :gra_group, :string

    field :gra_status, Conduit.QAD.Types.Bool

    field :gra_cmtindx, :integer

    field :gra_gl_type, :string

    field :gra_user1, :string

    field :gra_user2, :string

    field :gra__qadc01, :string

    field :gra_domain, :string

    field :oid_gra_mstr, :decimal, primary_key: true

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
