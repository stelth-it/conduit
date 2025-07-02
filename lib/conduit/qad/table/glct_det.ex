defmodule Elixir.Conduit.QAD.Table.Glct_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_glct_det" do
    field :glct_domain, :string

    field :glct_source_curr, :string

    field :glct_acc, :string

    field :glct_sub, :string

    field :glct_cc, :string

    field :glct_entity, :string

    field :glct_year, :integer

    field :glct_per, :integer

    field :glct_base_amt, :decimal

    field :glct_curr_amt, :decimal

    field :glct_mod_date, Conduit.QAD.Types.Date

    field :glct_mod_userid, :string

    field :glct_user1, :string

    field :glct_user2, :string

    field :glct__qadc01, :string

    field :glct__qadc02, :string

    field :oid_glct_det, :decimal, primary_key: true

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
