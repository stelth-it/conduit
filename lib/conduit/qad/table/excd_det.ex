defmodule Elixir.Conduit.QAD.Table.Excd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_excd_det" do
    field :excd_curr, :string

    field :excd_acc, :string

    field :excd_xcc, :string

    field :excd_xac_type, :string

    field :excd_year, :integer

    field :excd_per, :integer

    field :excd_rate, :decimal

    field :excd_user1, :string

    field :excd_user2, :string

    field :excd_en_rate, :decimal

    field :excd__qadc01, :string

    field :excd_ex_rate2, :decimal

    field :excd_ex_ratetype, :string

    field :excd_exru_seq, :integer

    field :excd_curr2, :string

    field :excd_domain, :string

    field :oid_excd_det, :decimal, primary_key: true

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
