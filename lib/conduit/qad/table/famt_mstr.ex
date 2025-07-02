defmodule Elixir.Conduit.QAD.Table.Famt_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_famt_mstr" do
    field :famt_id, :string

    field :famt_type, :string

    field :famt_switchsl, Conduit.QAD.Types.Bool

    field :famt_desc, :string

    field :famt_elife, :decimal

    field :famt_active, Conduit.QAD.Types.Bool

    field :famt_perc, :decimal

    field :famt_salv, Conduit.QAD.Types.Bool

    field :famt_conv, :string

    field :famt_actualdays, Conduit.QAD.Types.Bool

    field :famt_mod_userid, :string

    field :famt_mod_date, Conduit.QAD.Types.Date

    field :famt_user1, :string

    field :famt_user2, :string

    field :famt__chr01, :string

    field :famt__dec01, :decimal

    field :famt__log01, Conduit.QAD.Types.Bool

    field :famt__dte01, Conduit.QAD.Types.Date

    field :famt__int01, :integer

    field :famt__qadc01, :string

    field :famt__qadd01, :decimal

    field :famt__qadl01, Conduit.QAD.Types.Bool

    field :famt__qadi01, :integer

    field :famt__qadt01, Conduit.QAD.Types.Date

    field :famt__qadc02, :string

    field :famt_domain, :string

    field :oid_famt_mstr, :decimal, primary_key: true

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
