defmodule Elixir.Conduit.QAD.Table.Pgc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pgc_ctrl" do
    field :pgc_wait_status, :string

    field :pgc_addr, :string

    field :pgc_append_ca, Conduit.QAD.Types.Bool

    field :pgc_phone, :string

    field :pgc_index, :integer

    field :pgc_port4, :string

    field :pgc_port3, :string

    field :pgc_port2, :string

    field :pgc_port1, :string

    field :pgc_post_control, :string

    field :pgc_pre_control, :string

    field :pgc_paged_status, :string

    field :pgc_program, :string

    field :pgc_user1, :string

    field :pgc_user2, :string

    field :pgc__qadc01, :string

    field :pgc_domain, :string

    field :oid_pgc_ctrl, :decimal, primary_key: true

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
