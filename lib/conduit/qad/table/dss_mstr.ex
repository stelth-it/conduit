defmodule Elixir.Conduit.QAD.Table.Dss_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dss_mstr" do
    field :dss_nbr, :string

    field :dss_shipsite, :string

    field :dss_rec_site, :string

    field :dss_created, Conduit.QAD.Types.Date

    field :dss_due_date, Conduit.QAD.Types.Date

    field :dss_shipdate, Conduit.QAD.Types.Date

    field :dss_so_nbr, :string

    field :dss_po_nbr, :string

    field :dss_fob, :string

    field :dss_shipvia, :string

    field :dss_bol, :string

    field :dss_rmks, :string

    field :dss_status, :string

    field :dss_cmtindx, :integer

    field :dss_lang, :string

    field :dss_fr_list, :string

    field :dss_fr_terms, :string

    field :dss_cartons, :integer

    field :dss_user1, :string

    field :dss_user2, :string

    field :dss__qad01, :decimal

    field :dss__qad02, :decimal

    field :dss__qad03, :decimal

    field :dss__qad04, :integer

    field :dss__qad05, {:array, :decimal}

    field :dss__chr01, :string

    field :dss__chr02, :string

    field :dss__chr03, :string

    field :dss__chr04, :string

    field :dss__chr05, :string

    field :dss__chr06, :string

    field :dss__chr07, :string

    field :dss__chr08, :string

    field :dss__chr09, :string

    field :dss__chr10, :string

    field :dss__dte01, Conduit.QAD.Types.Date

    field :dss__dte02, Conduit.QAD.Types.Date

    field :dss__dec01, :decimal

    field :dss__dec02, :decimal

    field :dss__log01, Conduit.QAD.Types.Bool

    field :dss_app_owner, :string

    field :dss_weight, :decimal

    field :dss_weight_um, :string

    field :dss_fr_min_wt, :decimal

    field :dss_domain, :string

    field :oid_dss_mstr, :decimal, primary_key: true

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
