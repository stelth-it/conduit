defmodule Elixir.Conduit.QAD.Table.Ac_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ac_mstr" do
    field :ac_code, :string

    field :ac_xctr, :string

    field :ac_fpos, :integer

    field :ac_type, :string

    field :ac_desc, :string

    field :ac_xret_acc, :string

    field :ac_xret_cc, :string

    field :ac_curr, :string

    field :ac__qad03, :string

    field :ac_active, Conduit.QAD.Types.Bool

    field :ac_fx_index, :string

    field :ac_user1, :string

    field :ac_user2, :string

    field :ac__qad02, :string

    field :ac__qad01, Conduit.QAD.Types.Date

    field :ac_stat_acc, :string

    field :ac_stat_cc, :string

    field :ac__chr01, :string

    field :ac__chr02, :string

    field :ac__chr03, :string

    field :ac__chr04, :string

    field :ac__dte01, Conduit.QAD.Types.Date

    field :ac__dte02, Conduit.QAD.Types.Date

    field :ac__log01, Conduit.QAD.Types.Bool

    field :ac__log02, Conduit.QAD.Types.Bool

    field :ac_modl_only, Conduit.QAD.Types.Bool

    field :ac_match_seq, :string

    field :ac_domain, :string

    field :oid_ac_mstr, :decimal, primary_key: true

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
