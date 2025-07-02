defmodule Elixir.Conduit.QAD.Table.Atp_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atp_det" do
    field :atp_part, :string

    field :atp__qad02, Conduit.QAD.Types.Date

    field :atp_date, Conduit.QAD.Types.Date

    field :atp_qty, :decimal

    field :atp__qad03, :string

    field :atp__qad04, :string

    field :atp__qad01, :string

    field :atp_site, :string

    field :atp_user1, :string

    field :atp_user2, :string

    field :atp_id_num, :integer

    field :atp_domain, :string

    field :oid_atp_det, :decimal, primary_key: true

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
