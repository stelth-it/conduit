defmodule Elixir.Conduit.QAD.Table.Six_ref do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_six_ref" do
    field :six_trnbr, :integer

    field :six_type, :string

    field :six_order, :string

    field :six_line, :integer

    field :six_site, :string

    field :six_ship, :string

    field :six_cust, :string

    field :six_bill, :string

    field :six_part, :string

    field :six_sopart, :string

    field :six_qty, :decimal

    field :six_um, :string

    field :six_price, :decimal

    field :six_amt, :decimal

    field :six_curr, :string

    field :six_ship_id, :string

    field :six_authorization, :string

    field :six_po, :string

    field :six_shipdt, Conduit.QAD.Types.Date

    field :six_inv_nbr, :string

    field :six_qty_paid, :decimal

    field :six_amt_paid, :decimal

    field :six_closed, Conduit.QAD.Types.Bool

    field :six_mod_userid, :string

    field :six_mod_date, Conduit.QAD.Types.Date

    field :six_user1, :string

    field :six_user2, :string

    field :six_user3, :string

    field :six_user4, :string

    field :six_user5, :string

    field :six__qadc01, :string

    field :six__qadc02, :string

    field :six__qadc03, :string

    field :six__qadc04, :string

    field :six__qadc05, :string

    field :six__qadc06, :string

    field :six__qadc07, :string

    field :six__qadc08, :string

    field :six__qadc09, :string

    field :six__qadc10, :string

    field :six__qadi01, :integer

    field :six__qadi02, :integer

    field :six__qadi03, :integer

    field :six__qadi04, :integer

    field :six__qadi05, :integer

    field :six__qadd01, :decimal

    field :six__qadd02, :decimal

    field :six__qadd03, :decimal

    field :six__qadd04, :decimal

    field :six__qadd05, :decimal

    field :six__qadl01, Conduit.QAD.Types.Bool

    field :six__qadl02, Conduit.QAD.Types.Bool

    field :six__qadl03, Conduit.QAD.Types.Bool

    field :six__qadl04, Conduit.QAD.Types.Bool

    field :six__qadl05, Conduit.QAD.Types.Bool

    field :six__qadt01, Conduit.QAD.Types.Date

    field :six__qadt02, Conduit.QAD.Types.Date

    field :six__qadt03, Conduit.QAD.Types.Date

    field :six__qadt04, Conduit.QAD.Types.Date

    field :six__qadt05, Conduit.QAD.Types.Date

    field :six_amt_appld, :decimal

    field :six_modelyr, :string

    field :six_custref, :string

    field :six_domain, :string

    field :oid_six_ref, :decimal, primary_key: true

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
