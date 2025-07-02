defmodule Elixir.Conduit.QAD.Table.Ba_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ba_mstr" do
    field :ba_batch, :string

    field :ba_userid, :string

    field :ba_date, Conduit.QAD.Types.Date

    field :ba_ctrl, :decimal

    field :ba_total, :decimal

    field :ba_bank, :string

    field :ba_status, :string

    field :ba_user1, :string

    field :ba_user2, :string

    field :ba_module, :string

    field :ba_doc_type, :string

    field :ba_beg_bal, :decimal

    field :ba__qadc01, :string

    field :ba_domain, :string

    field :oid_ba_mstr, :decimal, primary_key: true

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
