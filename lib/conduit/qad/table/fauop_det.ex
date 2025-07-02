defmodule Elixir.Conduit.QAD.Table.Fauop_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fauop_det" do
    field :fauop_fa_id, :string

    field :fauop_fabk_id, :string

    field :fauop_yrper, :string

    field :fauop_upper, :integer

    field :fauop_accup, :integer

    field :fauop_mod_userid, :string

    field :fauop_mod_date, Conduit.QAD.Types.Date

    field :fauop_user1, :string

    field :fauop_user2, :string

    field :fauop__chr01, :string

    field :fauop__dec01, :decimal

    field :fauop__log01, Conduit.QAD.Types.Bool

    field :fauop__dte01, Conduit.QAD.Types.Date

    field :fauop__int01, :integer

    field :fauop__qadc01, :string

    field :fauop__qadd01, :decimal

    field :fauop__qadl01, Conduit.QAD.Types.Bool

    field :fauop__qadi01, :integer

    field :fauop__qadt01, Conduit.QAD.Types.Date

    field :fauop_domain, :string

    field :oid_fauop_det, :decimal, primary_key: true

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
