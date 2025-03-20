defmodule Elixir.Conduit.QAD.Table.Bdl_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bdl_mstr" do
    field :bdl_id, :integer

    field :bdl_exec, :string

    field :bdl_pgm_errs, :integer

    field :bdl_pro_errs, :integer

    field :bdl_date_ent, Conduit.QAD.Types.Date

    field :bdl_time_ent, :string

    field :bdl_date_pro, Conduit.QAD.Types.Date

    field :bdl_time_pro, :string

    field :bdl_user1, :string

    field :bdl_user2, :string

    field :bdl_source, :string

    field :bdl__qadc01, :string

    field :bdl_domain, :string

    field :oid_bdl_mstr, :decimal, primary_key: true

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
