defmodule Elixir.Conduit.QAD.Table.Usrl_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_usrl_det" do
    field :usrl_userid, :string

    field :usrl_product, :string

    field :usrl_active, Conduit.QAD.Types.Bool

    field :usrl_active_date, Conduit.QAD.Types.Date

    field :usrl_deactive_date, Conduit.QAD.Types.Date

    field :usrl_deactive_by, :string

    field :usrl_mod_userid, :string

    field :usrl_mod_date, Conduit.QAD.Types.Date

    field :usrl_user1, :string

    field :usrl_user2, :string

    field :usrl__qadc01, :string

    field :usrl__qadc02, :string

    field :usrl__qadd01, :decimal

    field :usrl__qadt01, Conduit.QAD.Types.Date

    field :oid_usrl_det, :decimal, primary_key: true

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
