defmodule Elixir.Conduit.QAD.Table.Cls_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cls_mstr" do
    field :cls_class, :string

    field :cls_desc, :string

    field :cls_acct, :string

    field :cls_ac_acct, :string

    field :cls_exp_acct, :string

    field :cls_userid, :string

    field :cls_mod_date, Conduit.QAD.Types.Date

    field :cls__qad01, Conduit.QAD.Types.Bool

    field :cls__qad02, :string

    field :cls__qad03, :string

    field :cls_user1, :string

    field :cls_user2, :string

    field :oid_cls_mstr, :decimal, primary_key: true

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
