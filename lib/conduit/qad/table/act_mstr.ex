defmodule Elixir.Conduit.QAD.Table.Act_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_act_mstr" do
    field :act_nbr, :string

    field :act_line, :integer

    field :act_cont_part, :string

    field :act_user1, :string

    field :act_user2, :string

    field :act__qadc01, :string

    field :act_charge_type, :string

    field :act_ord_mult, :integer

    field :act_domain, :string

    field :oid_act_mstr, :decimal, primary_key: true

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
