defmodule Elixir.Conduit.QAD.Table.Idhr_hist do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_idhr_hist" do
    field :idhr_div, :string

    field :idhr_group, :string

    field :idhr_inv_nbr, :string

    field :idhr_line, :integer

    field :idhr_nbr, :string

    field :idhr_pricing, :integer

    field :idhr_seq, :integer

    field :idhr_type, :integer

    field :idhr_user1, :string

    field :idhr_user2, :string

    field :idhr__qadc01, :string

    field :idhr__qadc02, :string

    field :idhr__qadc03, :string

    field :idhr__qadd01, :decimal

    field :idhr__qadd02, :decimal

    field :idhr__qadi01, :integer

    field :idhr__qadi02, :integer

    field :idhr__qadl01, Conduit.QAD.Types.Bool

    field :idhr__qadl02, Conduit.QAD.Types.Bool

    field :idhr__qadt01, Conduit.QAD.Types.Date

    field :idhr__qadt02, Conduit.QAD.Types.Date

    field :idhr_domain, :string

    field :oid_idhr_hist, :decimal, primary_key: true

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
