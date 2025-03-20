defmodule Elixir.Conduit.QAD.Table.Rqm_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rqm_det" do
    field :rqm_reference, :string

    field :rqm_cat, :string

    field :rqm_value, :string

    field :rqm_type, :integer

    field :rqm_nbr, :string

    field :rqm_line, :integer

    field :rqm_rlse_id, :string

    field :rqm_date, Conduit.QAD.Types.Date

    field :rqm_time, :string

    field :rqm_interval, :string

    field :rqm_user1, :string

    field :rqm_user2, :string

    field :rqm__qadc01, :string

    field :rqm_domain, :string

    field :oid_rqm_det, :decimal, primary_key: true

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
