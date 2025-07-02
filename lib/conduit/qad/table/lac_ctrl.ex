defmodule Elixir.Conduit.QAD.Table.Lac_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lac_ctrl" do
    field :lac_use_logistics, Conduit.QAD.Types.Bool

    field :lac__qadi01, :integer

    field :lac_mod_date, Conduit.QAD.Types.Date

    field :lac_mod_userid, :string

    field :lac_user1, :string

    field :lac_user2, :string

    field :lac__qadc01, :string

    field :lac__qadc02, :string

    field :lac_soship_nrm_id, :string

    field :lac_doship_nrm_id, :string

    field :lac_blank_suppliers, Conduit.QAD.Types.Bool

    field :lac_domain, :string

    field :oid_lac_ctrl, :decimal, primary_key: true

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
