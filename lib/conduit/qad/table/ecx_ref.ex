defmodule Elixir.Conduit.QAD.Table.Ecx_ref do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ecx_ref" do
    field :ecx_ext_ref, :string

    field :ecx_nbr, :string

    field :ecx_ext_line, :string

    field :ecx_line, :string

    field :ecx_order_type, :string

    field :ecx_site, :string

    field :ecx_line_site, :string

    field :ecx_mod_userid, :string

    field :ecx_mod_date, Conduit.QAD.Types.Date

    field :ecx_user1, :string

    field :ecx_user2, :string

    field :ecx__qadc01, :string

    field :ecx__qadc02, :string

    field :ecx_domain, :string

    field :oid_ecx_ref, :decimal, primary_key: true

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
