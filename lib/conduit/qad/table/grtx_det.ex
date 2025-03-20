defmodule Elixir.Conduit.QAD.Table.Grtx_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grtx_det" do
    field :grtx_indx, :integer

    field :grtx_seq, :integer

    field :grtx_text, :string

    field :grtx_user1, :string

    field :grtx_user2, :string

    field :grtx_fmt_txt, :string

    field :grtx__qadc01, :string

    field :grtx_domain, :string

    field :oid_grtx_det, :decimal, primary_key: true

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
