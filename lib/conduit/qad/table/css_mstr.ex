defmodule Elixir.Conduit.QAD.Table.Css_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_css_mstr" do
    field :css_ctry_code, :string

    field :css_auth, :string

    field :css_site, :string

    field :css_ctrl, :string

    field :css_start, Conduit.QAD.Types.Date

    field :css_end, Conduit.QAD.Types.Date

    field :css_cmtindx, :integer

    field :css_user1, :string

    field :css_user2, :string

    field :css__qadc01, :string

    field :css_domain, :string

    field :oid_css_mstr, :decimal, primary_key: true

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
