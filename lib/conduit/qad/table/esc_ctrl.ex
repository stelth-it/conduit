defmodule Elixir.Conduit.QAD.Table.Esc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esc_ctrl" do
    field :esc_nbr, :integer

    field :esc_es_prefix, :string

    field :esc_index, :integer

    field :esc_user1, :string

    field :esc_user2, :string

    field :esc_mod_userid, :string

    field :esc_mod_date, Conduit.QAD.Types.Date

    field :esc__chr01, :string

    field :esc__chr02, :string

    field :esc__dte01, Conduit.QAD.Types.Date

    field :esc__log01, Conduit.QAD.Types.Bool

    field :esc__int01, :integer

    field :esc__qadc01, :string

    field :esc__qadc02, :string

    field :esc__qadt01, Conduit.QAD.Types.Date

    field :esc__qadl01, Conduit.QAD.Types.Bool

    field :esc__qadi01, :integer

    field :esc_rrc_pre, :string

    field :esc_rrc_nbr, :integer

    field :esc_domain, :string

    field :oid_esc_ctrl, :decimal, primary_key: true

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
