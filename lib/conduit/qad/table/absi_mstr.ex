defmodule Elixir.Conduit.QAD.Table.Absi_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_absi_mstr" do
    field :absi_shipfrom, :string

    field :absi_abs_id, :string

    field :absi_voyage, :string

    field :absi_origin, :string

    field :absi_port_depart, :string

    field :absi_port_arrive, :string

    field :absi_due_date, Conduit.QAD.Types.Date

    field :absi_contents, :string

    field :absi_mod_date, Conduit.QAD.Types.Date

    field :absi_mod_userid, :string

    field :absi_user1, :string

    field :absi_user2, :string

    field :absi__qadc01, :string

    field :absi__qadc02, :string

    field :absi_carrier_ref2, :string

    field :absi_domain, :string

    field :oid_absi_mstr, :decimal, primary_key: true

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
