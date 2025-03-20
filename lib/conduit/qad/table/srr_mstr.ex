defmodule Elixir.Conduit.QAD.Table.Srr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_srr_mstr" do
    field :srr_nbr, :string

    field :srr_probidx, :integer

    field :srr_residx, :integer

    field :srr_desc, :string

    field :srr_date, Conduit.QAD.Types.Date

    field :srr_update, :string

    field :srr__chr01, :string

    field :srr_problem, :string

    field :srr__chr02, :string

    field :srr_type, :string

    field :srr__chr03, :string

    field :srr_started, :string

    field :srr__chr04, :string

    field :srr__chr05, :string

    field :srr__chr06, :string

    field :srr__chr07, :string

    field :srr__chr08, :string

    field :srr__chr09, :string

    field :srr__chr10, :string

    field :srr__dte01, Conduit.QAD.Types.Date

    field :srr__dte02, Conduit.QAD.Types.Date

    field :srr__log01, Conduit.QAD.Types.Bool

    field :srr__dec02, :decimal

    field :srr__dec01, :decimal

    field :srr_assign, :string

    field :srr_status, :string

    field :srr_ca_nbr, :string

    field :srr_severity, :string

    field :srr_part, :string

    field :srr_eu_nbr, :string

    field :srr_pri, :integer

    field :srr_cls_date, Conduit.QAD.Types.Date

    field :srr_que, :string

    field :srr_tfix, :string

    field :srr_tdate, Conduit.QAD.Types.Date

    field :srr_est_hrs, :decimal

    field :srr_act_hrs, :decimal

    field :srr_user1, :string

    field :srr_user2, :string

    field :srr_eco, :string

    field :srr_resolution, :string

    field :srr_phone, :string

    field :srr_requestor, :string

    field :srr_note, :string

    field :srr_domain, :string

    field :oid_srr_mstr, :decimal, primary_key: true

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
