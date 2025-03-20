defmodule Elixir.Conduit.QAD.Table.Faba_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_faba_det" do
    field :faba_fa_id, :string

    field :faba_acctype, :string

    field :faba_acct, :string

    field :faba_sub, :string

    field :faba_cc, :string

    field :faba_proj, :string

    field :faba_glseq, :integer

    field :faba_mod_userid, :string

    field :faba_mod_date, Conduit.QAD.Types.Date

    field :faba_user1, :string

    field :faba_user2, :string

    field :faba__chr01, :string

    field :faba__dec01, :decimal

    field :faba__log01, Conduit.QAD.Types.Bool

    field :faba__dte01, Conduit.QAD.Types.Date

    field :faba__int01, :integer

    field :faba__qadc01, :string

    field :faba__qadd01, :decimal

    field :faba__qadi01, :integer

    field :faba__qadl01, Conduit.QAD.Types.Bool

    field :faba__qadt01, Conduit.QAD.Types.Date

    field :faba_domain, :string

    field :oid_faba_det, :decimal, primary_key: true

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
