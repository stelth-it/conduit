defmodule Elixir.Conduit.QAD.Table.Eca_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eca_mstr" do
    field :eca_code, :string

    field :eca_group, :string

    field :eca_seq, :integer

    field :eca_reroute, :integer

    field :eca__qad01, Conduit.QAD.Types.Bool

    field :eca__qad02, Conduit.QAD.Types.Date

    field :eca__qad03, :string

    field :eca__qad04, :string

    field :eca__qad05, :string

    field :eca_mod_date, Conduit.QAD.Types.Date

    field :eca_userid, :string

    field :eca_user1, :string

    field :eca_user2, :string

    field :eca_domain, :string

    field :oid_eca_mstr, :decimal, primary_key: true

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
