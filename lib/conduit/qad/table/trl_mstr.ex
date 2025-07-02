defmodule Elixir.Conduit.QAD.Table.Trl_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_trl_mstr" do
    field :trl_code, :string

    field :trl_desc, :string

    field :trl_acct, :string

    field :trl_cc, :string

    field :trl_project, :string

    field :trl_taxable, Conduit.QAD.Types.Bool

    field :trl_taxc, :string

    field :trl_fst, Conduit.QAD.Types.Bool

    field :trl_pst, Conduit.QAD.Types.Bool

    field :trl_user1, :string

    field :trl_user2, :string

    field :trl__qadc01, :string

    field :trl_sub, :string

    field :trl_domain, :string

    field :oid_trl_mstr, :decimal, primary_key: true

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
