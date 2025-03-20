defmodule Elixir.Conduit.QAD.Table.Bic_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bic_ctrl" do
    field :bic_periods, :integer

    field :bic_last_due, Conduit.QAD.Types.Date

    field :bic_last_cyc, :string

    field :bic_lst_date, Conduit.QAD.Types.Date

    field :bic__qadi01, :integer

    field :bic_audit, Conduit.QAD.Types.Bool

    field :bic_user1, :string

    field :bic_user2, :string

    field :bic__qadc01, :string

    field :bic_domain, :string

    field :oid_bic_ctrl, :decimal, primary_key: true

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
