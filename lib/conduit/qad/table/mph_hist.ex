defmodule Elixir.Conduit.QAD.Table.Mph_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mph_hist" do
    field :mph_part, :string

    field :mph_routing, :string

    field :mph_op, :integer

    field :mph_procedure, :string

    field :mph_test, :string

    field :mph_date, Conduit.QAD.Types.Date

    field :mph_rsult, :string

    field :mph_cmtindx, :integer

    field :mph_op_trnbr, :integer

    field :mph_lot, :string

    field :mph_mch, :string

    field :mph_wr_nbr, :string

    field :mph_pass, Conduit.QAD.Types.Bool

    field :mph_user1, :string

    field :mph_user2, :string

    field :mph__chr01, :string

    field :mph__chr02, :string

    field :mph__chr03, :string

    field :mph__chr04, :string

    field :mph__chr05, :string

    field :mph__dec01, :decimal

    field :mph__dec02, :decimal

    field :mph_testmthd, :string

    field :mph_attribute, :string

    field :mph_domain, :string

    field :oid_mph_hist, :decimal, primary_key: true

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
