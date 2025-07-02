defmodule Elixir.Conduit.QAD.Table.Sbid_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sbid_det" do
    field :sbid_line, :integer

    field :sbid_nbr, :string

    field :sbid_type, :string

    field :sbid_origin, :string

    field :sbid_part, :string

    field :sbid_bill, :string

    field :sbid_cust, :string

    field :sbid_qty, :decimal

    field :sbid_um, :string

    field :sbid_price, :decimal

    field :sbid_amt, :decimal

    field :sbid_ship_id, :string

    field :sbid_authorization, :string

    field :sbid_po, :string

    field :sbid_trnbr, :integer

    field :sbid_inv_nbr, :string

    field :sbid_tax_amt, :decimal

    field :sbid_tax_pct, :decimal

    field :sbid_order, :string

    field :sbid_user6, :string

    field :sbid_user7, :string

    field :sbid_mod_userid, :string

    field :sbid_mod_date, Conduit.QAD.Types.Date

    field :sbid_user1, :string

    field :sbid_user2, :string

    field :sbid_user3, :string

    field :sbid_user4, :string

    field :sbid_user5, :string

    field :sbid__qadc01, :string

    field :sbid__qadc02, :string

    field :sbid__qadc03, :string

    field :sbid__qadc04, :string

    field :sbid__qadc05, :string

    field :sbid__qadc06, :string

    field :sbid__qadc07, :string

    field :sbid__qadc08, :string

    field :sbid__qadc09, :string

    field :sbid__qadc10, :string

    field :sbid__qadi01, :integer

    field :sbid__qadi02, :integer

    field :sbid__qadi03, :integer

    field :sbid__qadi04, :integer

    field :sbid__qadi05, :integer

    field :sbid__qadd01, :decimal

    field :sbid__qadd02, :decimal

    field :sbid__qadd03, :decimal

    field :sbid__qadd04, :decimal

    field :sbid__qadd05, :decimal

    field :sbid__qadl01, Conduit.QAD.Types.Bool

    field :sbid__qadl02, Conduit.QAD.Types.Bool

    field :sbid__qadl03, Conduit.QAD.Types.Bool

    field :sbid__qadl04, Conduit.QAD.Types.Bool

    field :sbid__qadl05, Conduit.QAD.Types.Bool

    field :sbid__qadt01, Conduit.QAD.Types.Date

    field :sbid__qadt02, Conduit.QAD.Types.Date

    field :sbid__qadt03, Conduit.QAD.Types.Date

    field :sbid__qadt04, Conduit.QAD.Types.Date

    field :sbid__qadt05, Conduit.QAD.Types.Date

    field :sbid_remarks, :string

    field :sbid_modelyr, :string

    field :sbid_custref, :string

    field :sbid_domain, :string

    field :oid_sbid_det, :decimal, primary_key: true

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
