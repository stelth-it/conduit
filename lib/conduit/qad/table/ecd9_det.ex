defmodule Elixir.Conduit.QAD.Table.Ecd9_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ecd9_det" do
    field :ecd9_nbr, :string

    field :ecd9_group, :string

    field :ecd9_approved, Conduit.QAD.Types.Bool

    field :ecd9_appr_date, Conduit.QAD.Types.Date

    field :ecd9_seq, :integer

    field :ecd9_cmtindx, :integer

    field :ecd9_status, :string

    field :ecd9_user1, :string

    field :ecd9_user2, :string

    field :ecd9__qad01, Conduit.QAD.Types.Bool

    field :ecd9__qad02, Conduit.QAD.Types.Date

    field :ecd9__qad03, :string

    field :ecd9__qad04, :string

    field :ecd9__qad05, :string

    field :ecd9_mod_date, Conduit.QAD.Types.Date

    field :ecd9_userid, :string

    field :ecd9_domain, :string

    field :oid_ecd9_det, :decimal, primary_key: true

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
