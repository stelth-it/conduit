defmodule Elixir.Conduit.QAD.Table.Fkt_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fkt_mstr" do
    field :fkt_bom_code, :string

    field :fkt_eng_code, :string

    field :fkt_loc, :string

    field :fkt_mod_date, Conduit.QAD.Types.Date

    field :fkt_part, :string

    field :fkt_type, :string

    field :fkt_serial, :string

    field :fkt_site, :string

    field :fkt__chr01, :string

    field :fkt__chr02, :string

    field :fkt__chr03, :string

    field :fkt__chr04, :string

    field :fkt__dec01, :decimal

    field :fkt__dec02, :decimal

    field :fkt__dec03, :decimal

    field :fkt__dte01, Conduit.QAD.Types.Date

    field :fkt__dte02, Conduit.QAD.Types.Date

    field :fkt__dte03, Conduit.QAD.Types.Date

    field :fkt__log01, Conduit.QAD.Types.Bool

    field :fkt__log02, Conduit.QAD.Types.Bool

    field :fkt__log03, Conduit.QAD.Types.Bool

    field :fkt__qadc01, :string

    field :fkt__qadc02, :string

    field :fkt__qadc03, :string

    field :fkt__qadc04, :string

    field :fkt__qadd01, Conduit.QAD.Types.Date

    field :fkt__qadd02, Conduit.QAD.Types.Date

    field :fkt__qadd03, Conduit.QAD.Types.Date

    field :fkt__qadde01, :decimal

    field :fkt__qadde02, :decimal

    field :fkt__qadde03, :decimal

    field :fkt__qadl01, Conduit.QAD.Types.Bool

    field :fkt__qadl02, Conduit.QAD.Types.Bool

    field :fkt__qadl03, Conduit.QAD.Types.Bool

    field :fkt_curr_site, :string

    field :fkt_curr_loc, :string

    field :fkt_eff_date, Conduit.QAD.Types.Date

    field :fkt_in_use, Conduit.QAD.Types.Bool

    field :fkt_complete, Conduit.QAD.Types.Bool

    field :fkt_rev, :string

    field :fkt_order, Conduit.QAD.Types.Bool

    field :fkt_mod_userid, :string

    field :fkt_user1, :string

    field :fkt_user2, :string

    field :fkt_domain, :string

    field :oid_fkt_mstr, :decimal, primary_key: true

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
