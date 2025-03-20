defmodule Elixir.Conduit.QAD.Table.Cf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cf_mstr" do
    field :cf_nbr, :string

    field :cf_type, Conduit.QAD.Types.Bool

    field :cf_due_date, Conduit.QAD.Types.Date

    field :cf_expt_date, Conduit.QAD.Types.Date

    field :cf_entity, :string

    field :cf_curr, :string

    field :cf_ref, :string

    field :cf_expt_amt, :decimal

    field :cf_ref_amt, :decimal

    field :cf_cum_amt, :decimal

    field :cf_desc1, :string

    field :cf_desc2, :string

    field :cf_ldue_date, Conduit.QAD.Types.Date

    field :cf_bank, :string

    field :cf_userid, :string

    field :cf_date, Conduit.QAD.Types.Date

    field :cf_lastedit, Conduit.QAD.Types.Date

    field :cf_cmtindx, :integer

    field :cf_ent_ex, :decimal

    field :cf_ex_rate, :decimal

    field :cf_user1, :string

    field :cf_user2, :string

    field :cf__chr01, :string

    field :cf__chr02, :string

    field :cf__chr03, :string

    field :cf__chr04, :string

    field :cf__chr05, :string

    field :cf__dte01, Conduit.QAD.Types.Date

    field :cf__dte02, Conduit.QAD.Types.Date

    field :cf__dec01, :decimal

    field :cf__dec02, :decimal

    field :cf__log01, Conduit.QAD.Types.Bool

    field :cf_ex_rate2, :decimal

    field :cf_ex_ratetype, :string

    field :cf_exru_seq, :integer

    field :cf_domain, :string

    field :oid_cf_mstr, :decimal, primary_key: true

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
