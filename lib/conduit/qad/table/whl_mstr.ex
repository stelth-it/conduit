defmodule Elixir.Conduit.QAD.Table.Whl_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_whl_mstr" do
    field :whl_site, :string

    field :whl_loc, :string

    field :whl_src_dest_id, :string

    field :whl_date, Conduit.QAD.Types.Date

    field :whl_act, Conduit.QAD.Types.Bool

    field :whl_um_exp, Conduit.QAD.Types.Bool

    field :whl_po_exp, Conduit.QAD.Types.Bool

    field :whl_so_exp, Conduit.QAD.Types.Bool

    field :whl_wo_exp, Conduit.QAD.Types.Bool

    field :whl_do_exp, Conduit.QAD.Types.Bool

    field :whl_do_req_exp, Conduit.QAD.Types.Bool

    field :whl_cust_exp, Conduit.QAD.Types.Bool

    field :whl_sup_exp, Conduit.QAD.Types.Bool

    field :whl_cust_item_nbr_exp, Conduit.QAD.Types.Bool

    field :whl_rps_exp, Conduit.QAD.Types.Bool

    field :whl_sup_item_nbr_exp, Conduit.QAD.Types.Bool

    field :whl_do_req_cmt_exp, Conduit.QAD.Types.Bool

    field :whl_do_cmt_exp, Conduit.QAD.Types.Bool

    field :whl_po_cmt_exp, Conduit.QAD.Types.Bool

    field :whl_wo_cmt_exp, Conduit.QAD.Types.Bool

    field :whl_so_cmt_exp, Conduit.QAD.Types.Bool

    field :whl_user1, :string

    field :whl_user2, :string

    field :whl__qadc01, :string

    field :whl__qadc02, :string

    field :whl__qadd03, :decimal

    field :whl__qadt04, Conduit.QAD.Types.Date

    field :whl__qadl05, Conduit.QAD.Types.Bool

    field :whl__chr01, :string

    field :whl__dec01, :decimal

    field :whl__dte01, Conduit.QAD.Types.Date

    field :whl__log01, Conduit.QAD.Types.Bool

    field :whl_pt_exp, Conduit.QAD.Types.Bool

    field :whl_wo_rcpt_exp, Conduit.QAD.Types.Bool

    field :whl_domain, :string

    field :oid_whl_mstr, :decimal, primary_key: true

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
