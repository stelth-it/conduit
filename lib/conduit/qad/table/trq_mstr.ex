defmodule Elixir.Conduit.QAD.Table.Trq_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_trq_mstr" do
    field :trq_id, :integer

    field :trq_doc_type, :string

    field :trq_doc_ref, :string

    field :trq_add_ref, :string

    field :trq_msg_type, :string

    field :trq_mod_userid, :string

    field :trq_mod_date, Conduit.QAD.Types.Date

    field :trq_user1, :string

    field :trq_user2, :string

    field :trq__qadc01, :string

    field :trq_domain, :string

    field :oid_trq_mstr, :decimal, primary_key: true

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
