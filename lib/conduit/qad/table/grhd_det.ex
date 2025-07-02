defmodule Elixir.Conduit.QAD.Table.Grhd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_grhd_det" do
    field :grhd_group, :string

    field :grhd_type, :string

    field :grhd_seq, :integer

    field :grhd_code, :string

    field :grhd_link, Conduit.QAD.Types.Bool

    field :grhd_link_type, :string

    field :grhd_explode, Conduit.QAD.Types.Bool

    field :grhd_priority, :integer

    field :grhd_sub_indent, :integer

    field :grhd_user1, :string

    field :grhd_user2, :string

    field :grhd__qadc01, :string

    field :grhd_domain, :string

    field :oid_grhd_det, :decimal, primary_key: true

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
