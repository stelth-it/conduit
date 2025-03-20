defmodule Elixir.Conduit.QAD.Table.Cssi_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cssi_det" do
    field :cssi_site, :string

    field :cssi_set, :string

    field :cssi_cur, :string

    field :cssi_active, Conduit.QAD.Types.Bool

    field :cssi_user1, :string

    field :cssi_user2, :string

    field :cssi_userid, :string

    field :cssi_mod_date, Conduit.QAD.Types.Date

    field :cssi__qadc01, :string

    field :cssi_domain, :string

    field :oid_cssi_det, :decimal, primary_key: true

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
