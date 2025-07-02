defmodule Elixir.Conduit.QAD.Table.Wl_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_wl_mstr" do
    field :wl_prodby_id, :string

    field :wl_prodby_op, :integer

    field :wl_lotser, :string

    field :wl_cert_status, :string

    field :wl_qty_cumprod, :decimal

    field :wl_qty_cumcons, :decimal

    field :wl_qty_cumrjct, :decimal

    field :wl_qty_cumrwrk, :decimal

    field :wl_qty_cumscrap, :decimal

    field :wl_qty_cumadj, :decimal

    field :wl_qty_cumtrin, :decimal

    field :wl_qty_cumtrout, :decimal

    field :wl_cr_date, Conduit.QAD.Types.Date

    field :wl_cr_time, :integer

    field :wl_mod_date, Conduit.QAD.Types.Date

    field :wl_mod_time, :integer

    field :wl_mod_userid, :string

    field :wl__qadc01, :string

    field :wl__qadc02, :string

    field :wl__qadc03, :string

    field :wl__qadc04, :string

    field :wl__qadd01, :decimal

    field :wl__qadd02, :decimal

    field :wl__qadi01, :integer

    field :wl__qadi02, :integer

    field :wl__qadl01, Conduit.QAD.Types.Bool

    field :wl__qadl02, Conduit.QAD.Types.Bool

    field :wl__qadt01, Conduit.QAD.Types.Date

    field :wl__qadt02, Conduit.QAD.Types.Date

    field :wl__chr01, :string

    field :wl__chr02, :string

    field :wl__chr03, :string

    field :wl__chr04, :string

    field :wl__dec01, :decimal

    field :wl__dec02, :decimal

    field :wl__int01, :integer

    field :wl__int02, :integer

    field :wl__log01, Conduit.QAD.Types.Bool

    field :wl__log02, Conduit.QAD.Types.Bool

    field :wl__dte01, Conduit.QAD.Types.Date

    field :wl__dte02, Conduit.QAD.Types.Date

    field :wl_user1, :string

    field :wl_user2, :string

    field :wl_domain, :string

    field :oid_wl_mstr, :decimal, primary_key: true

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
