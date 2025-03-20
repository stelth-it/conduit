defmodule Elixir.Conduit.QAD.Table.Cksd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cksd_det" do
    field :cksd_batch, :string

    field :cksd_line, :integer

    field :cksd_nbr, :integer

    field :cksd_user1, :string

    field :cksd_user2, :string

    field :cksd_acct, :string

    field :cksd_cc, :string

    field :cksd_ex_rate, :decimal

    field :cksd__qadc01, :string

    field :cksd_ex_rate2, :decimal

    field :cksd_ex_ratetype, :string

    field :cksd_exru_seq, :integer

    field :cksd_sub, :string

    field :cksd_domain, :string

    field :oid_cksd_det, :decimal, primary_key: true

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
