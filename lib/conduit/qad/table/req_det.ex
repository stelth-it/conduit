defmodule Elixir.Conduit.QAD.Table.Req_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_req_det" do
    field :req_nbr, :string

    field :req_line, :integer

    field :req_part, :string

    field :req_qty, :decimal

    field :req_rel_date, Conduit.QAD.Types.Date

    field :req_need, Conduit.QAD.Types.Date

    field :req_um, :string

    field :req_print, Conduit.QAD.Types.Bool

    field :req_so_job, :string

    field :req_user1, :string

    field :req_user2, :string

    field :req_site, :string

    field :req_acct, :string

    field :req_cc, :string

    field :req_cmtindx, :integer

    field :req_request, :string

    field :req_apr_by, :string

    field :req__chr01, :string

    field :req__chr02, :string

    field :req__chr03, :string

    field :req__chr04, :string

    field :req__chr05, :string

    field :req__dte01, Conduit.QAD.Types.Date

    field :req__dte02, Conduit.QAD.Types.Date

    field :req__dec01, :decimal

    field :req__dec02, :decimal

    field :req__log01, Conduit.QAD.Types.Bool

    field :req_project, :string

    field :req_apr_code, :string

    field :req_pur_cost, :decimal

    field :req_apr_prnt, Conduit.QAD.Types.Bool

    field :req_approved, Conduit.QAD.Types.Bool

    field :req_apr_ent, :string

    field :req_po_site, :string

    field :req_sub, :string

    field :req_app_owner, :string

    field :req_domain, :string

    field :oid_req_det, :decimal, primary_key: true

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
