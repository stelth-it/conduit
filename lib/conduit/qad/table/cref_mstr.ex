defmodule Elixir.Conduit.QAD.Table.Cref_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cref_mstr" do
    field :cref_ref_type, :string

    field :cref_item3, :string

    field :cref_item2, :string

    field :cref_item1, :string

    field :cref_qad_dec02, :decimal

    field :cref_qad_date2, Conduit.QAD.Types.Date

    field :cref_qad_dec01, :decimal

    field :cref_qad_date1, Conduit.QAD.Types.Date

    field :cref_qad_log02, Conduit.QAD.Types.Bool

    field :cref_qad_log01, Conduit.QAD.Types.Bool

    field :cref_cset, :string

    field :cref_item4, :string

    field :cref_user1, :string

    field :cref_user2, :string

    field :cref__qadc01, :string

    field :cref_domain, :string

    field :oid_cref_mstr, :decimal, primary_key: true

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
