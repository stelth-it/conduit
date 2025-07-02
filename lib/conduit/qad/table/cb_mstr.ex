defmodule Elixir.Conduit.QAD.Table.Cb_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cb_mstr" do
    field :cb_batch, :string

    field :cb_line, :integer

    field :cb_type, :string

    field :cb_amt, :decimal

    field :cb_ref, :string

    field :cb_ex_rate, :decimal

    field :cb_user1, :string

    field :cb_user2, :string

    field :cb_curr, :string

    field :cb_ent_ex, :decimal

    field :cb_curr_amt, :decimal

    field :cb__qadc01, :string

    field :cb_ex_rate2, :decimal

    field :cb_ex_ratetype, :string

    field :cb_exru_seq, :integer

    field :cb_subtype, :string

    field :cb_domain, :string

    field :oid_cb_mstr, :decimal, primary_key: true

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
