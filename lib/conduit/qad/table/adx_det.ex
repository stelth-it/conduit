defmodule Elixir.Conduit.QAD.Table.Adx_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_adx_det" do
    field :adx_ext_appl, :string

    field :adx_ext_ref1, :string

    field :adx_ext_ref2, :string

    field :adx_mfg_addr, :string

    field :adx_mod_userid, :string

    field :adx_mod_date, Conduit.QAD.Types.Date

    field :adx_user1, :string

    field :adx_user2, :string

    field :adx__qadc01, :string

    field :adx__qadi01, :integer

    field :adx__qadd01, :decimal

    field :adx__qadl01, Conduit.QAD.Types.Bool

    field :adx__qadt01, Conduit.QAD.Types.Date

    field :adx_domain, :string

    field :oid_adx_det, :decimal, primary_key: true

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
