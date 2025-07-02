defmodule Elixir.Conduit.QAD.Table.Oa_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_oa_det" do
    field :oa_nbr, :string

    field :oa_part, :string

    field :oa_qty, :decimal

    field :oa_fr_date, Conduit.QAD.Types.Date

    field :oa_to_date, Conduit.QAD.Types.Date

    field :oa_code, :integer

    field :oa_detail, :string

    field :oa_review, :string

    field :oa_site, :string

    field :oa_line, :string

    field :oa_user1, :string

    field :oa_user2, :string

    field :oa__qadc01, :string

    field :oa_domain, :string

    field :oid_oa_det, :decimal, primary_key: true

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
