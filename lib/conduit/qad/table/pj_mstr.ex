defmodule Elixir.Conduit.QAD.Table.Pj_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pj_mstr" do
    field :pj_project, :string

    field :pj_desc, :string

    field :pj_active, Conduit.QAD.Types.Bool

    field :pj_beg_dt, Conduit.QAD.Types.Date

    field :pj_cmtindx, :integer

    field :pj_comp, Conduit.QAD.Types.Date

    field :pj_findate, Conduit.QAD.Types.Date

    field :pj_revdate, Conduit.QAD.Types.Date

    field :pj_revfin, Conduit.QAD.Types.Date

    field :pj_stat, :string

    field :pj_type, :string

    field :pj_user1, :string

    field :pj_user2, :string

    field :pj__qadc01, :string

    field :pj_domain, :string

    field :oid_pj_mstr, :decimal, primary_key: true

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
