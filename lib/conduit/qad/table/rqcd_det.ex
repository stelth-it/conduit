defmodule Elixir.Conduit.QAD.Table.Rqcd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rqcd_det" do
    field :rqcd_category, :string

    field :rqcd_acct_from, :string

    field :rqcd_acct_to, :string

    field :rqcd__chr01, :string

    field :rqcd__chr02, :string

    field :rqcd__chr03, :string

    field :rqcd__chr04, :string

    field :rqcd__qadc01, :string

    field :rqcd__qadc02, :string

    field :rqcd__qadc03, :string

    field :rqcd__qadc04, :string

    field :rqcd_sub_from, :string

    field :rqcd_sub_to, :string

    field :rqcd_domain, :string

    field :oid_rqcd_det, :decimal, primary_key: true

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
