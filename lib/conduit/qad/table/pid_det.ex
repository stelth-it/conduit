defmodule Elixir.Conduit.QAD.Table.Pid_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pid_det" do
    field :pid_list_id, :string

    field :pid_amt, :decimal

    field :pid_qty, :decimal

    field :pid_fr_terms, :string

    field :pid_cr_terms, :string

    field :pid_fr_list, :string

    field :pid_user1, :string

    field :pid_user2, :string

    field :pid__qadc01, :string

    field :pid__qadd01, :decimal

    field :pid_domain, :string

    field :oid_pid_det, :decimal, primary_key: true

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
