defmodule Elixir.Conduit.QAD.Table.Pou_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pou_mstr" do
    field :pou_code, :string

    field :pou_desc, :string

    field :pou_cmtindx, :integer

    field :pou_mod_userid, :string

    field :pou_mod_date, Conduit.QAD.Types.Date

    field :pou_user1, :string

    field :pou_user2, :string

    field :pou__qadc01, :string

    field :pou__qadc02, :string

    field :pou_domain, :string

    field :oid_pou_mstr, :decimal, primary_key: true

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
