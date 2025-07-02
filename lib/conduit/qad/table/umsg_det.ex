defmodule Elixir.Conduit.QAD.Table.Umsg_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_umsg_det" do
    field :umsg_call_pgm, :string

    field :umsg_site, :string

    field :umsg_addr, :string

    field :umsg_nbr, :integer

    field :umsg_seq, :integer

    field :umsg_level, :integer

    field :umsg_exec_pgm, :string

    field :umsg_lang, :string

    field :umsg_user1, :string

    field :umsg_user2, :string

    field :umsg__qadc01, :string

    field :umsg_domain, :string

    field :oid_umsg_det, :decimal, primary_key: true

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
