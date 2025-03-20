defmodule Elixir.Conduit.QAD.Table.Ipd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ipd_det" do
    field :ipd_part, :string

    field :ipd_routing, :string

    field :ipd_op, :integer

    field :ipd_nbr, :string

    field :ipd_test, :string

    field :ipd_label, :string

    field :ipd_tol, :string

    field :ipd_include, Conduit.QAD.Types.Bool

    field :ipd_cmtindx, :integer

    field :ipd_user1, :string

    field :ipd_user2, :string

    field :ipd_tol_type, :string

    field :ipd__chr01, :string

    field :ipd__chr02, :string

    field :ipd__chr03, :string

    field :ipd__chr04, :string

    field :ipd__chr05, :string

    field :ipd__dec01, :decimal

    field :ipd__dec02, :decimal

    field :ipd_start, Conduit.QAD.Types.Date

    field :ipd_end, Conduit.QAD.Types.Date

    field :ipd_testmthd, :string

    field :ipd_attribute, :string

    field :ipd_domain, :string

    field :oid_ipd_det, :decimal, primary_key: true

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
