defmodule Elixir.Conduit.QAD.Table.Faadj_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_faadj_mstr" do
    field :faadj_fa_id, :string

    field :faadj_type, :string

    field :faadj_amt, :decimal

    field :faadj_yrper, :string

    field :faadj_life, :decimal

    field :faadj_resrv, :integer

    field :faadj_famt_id, :string

    field :faadj_fabk_id, :string

    field :faadj_migrate, Conduit.QAD.Types.Bool

    field :faadj_mod_userid, :string

    field :faadj_mod_date, Conduit.QAD.Types.Date

    field :faadj_user1, :string

    field :faadj_user2, :string

    field :faadj__chr01, :string

    field :faadj__dec01, :decimal

    field :faadj__log01, Conduit.QAD.Types.Bool

    field :faadj__dte01, Conduit.QAD.Types.Date

    field :faadj__int01, :integer

    field :faadj__qadc01, :string

    field :faadj__qadd01, :decimal

    field :faadj__qadl01, Conduit.QAD.Types.Bool

    field :faadj__qadi01, :integer

    field :faadj__qadt01, Conduit.QAD.Types.Date

    field :faadj_domain, :string

    field :oid_faadj_mstr, :decimal, primary_key: true

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
