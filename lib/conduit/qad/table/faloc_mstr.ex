defmodule Elixir.Conduit.QAD.Table.Faloc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_faloc_mstr" do
    field :faloc_id, :string

    field :faloc_desc, :string

    field :faloc_cc, :string

    field :faloc_sub, :string

    field :faloc_entity, :string

    field :faloc_mod_userid, :string

    field :faloc_mod_date, Conduit.QAD.Types.Date

    field :faloc_user1, :string

    field :faloc_user2, :string

    field :faloc__chr01, :string

    field :faloc__dec01, :decimal

    field :faloc__log01, Conduit.QAD.Types.Bool

    field :faloc__dte01, Conduit.QAD.Types.Date

    field :faloc__int01, :integer

    field :faloc__qadc01, :string

    field :faloc__qadd01, :decimal

    field :faloc__qadi01, :integer

    field :faloc__qadt01, Conduit.QAD.Types.Date

    field :faloc__qadl01, Conduit.QAD.Types.Bool

    field :faloc__qadc02, :string

    field :faloc_domain, :string

    field :oid_faloc_mstr, :decimal, primary_key: true

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
