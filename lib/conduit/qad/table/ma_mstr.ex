defmodule Elixir.Conduit.QAD.Table.Ma_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ma_mstr" do
    field :ma_entity, :string

    field :ma_tr_type, :string

    field :ma_acct1, :string

    field :ma_cc1, :string

    field :ma_acct2, :string

    field :ma_cc2, :string

    field :ma_mr_acct1, :string

    field :ma_mr_cc1, :string

    field :ma_mr_acct2, :string

    field :ma_mr_cc2, :string

    field :ma_all_cc, Conduit.QAD.Types.Bool

    field :ma_user1, :string

    field :ma_user2, :string

    field :ma__qadc01, :string

    field :ma_sub1, :string

    field :ma_sub2, :string

    field :ma_mr_sub1, :string

    field :ma_mr_sub2, :string

    field :ma_all_sub, Conduit.QAD.Types.Bool

    field :ma_domain, :string

    field :oid_ma_mstr, :decimal, primary_key: true

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
