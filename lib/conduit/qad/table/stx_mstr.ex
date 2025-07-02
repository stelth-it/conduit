defmodule Elixir.Conduit.QAD.Table.Stx_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_stx_mstr" do
    field :stx_paid, Conduit.QAD.Types.Bool

    field :stx_key, :string

    field :stx_tax_code, :string

    field :stx_tran_type, :string

    field :stx_use_st, Conduit.QAD.Types.Bool

    field :stx_mod_userid, :string

    field :stx_mod_date, Conduit.QAD.Types.Date

    field :stx_user1, :string

    field :stx_user2, :string

    field :stx__qadc01, :string

    field :stx__qadc02, :string

    field :stx_domain, :string

    field :oid_stx_mstr, :decimal, primary_key: true

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
