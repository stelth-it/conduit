defmodule Elixir.Conduit.QAD.Table.Totd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_totd_det" do
    field :totd_terms_code, :string

    field :totd_lc_charge, :string

    field :totd_responsibility, :string

    field :totd_mod_userid, :string

    field :totd_mod_date, Conduit.QAD.Types.Date

    field :totd_user1, :string

    field :totd_user2, :string

    field :totd__qadc01, :string

    field :totd__qadc02, :string

    field :totd_domain, :string

    field :oid_totd_det, :decimal, primary_key: true

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
