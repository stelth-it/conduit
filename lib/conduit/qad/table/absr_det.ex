defmodule Elixir.Conduit.QAD.Table.Absr_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_absr_det" do
    field :absr_qty, :decimal

    field :absr_date, Conduit.QAD.Types.Date

    field :absr_interval, :string

    field :absr_line, :integer

    field :absr_nbr, :string

    field :absr_reference, :string

    field :absr_ship_id, :string

    field :absr_time, :string

    field :absr_type, :integer

    field :absr_cnfrmd, Conduit.QAD.Types.Bool

    field :absr_shipfrom, :string

    field :absr_id, :string

    field :absr_rlse_id, :string

    field :absr_user1, :string

    field :absr_user2, :string

    field :absr__qadc01, :string

    field :absr_domain, :string

    field :oid_absr_det, :decimal, primary_key: true

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
