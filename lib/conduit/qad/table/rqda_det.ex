defmodule Elixir.Conduit.QAD.Table.Rqda_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rqda_det" do
    field :rqda_nbr, :string

    field :rqda_apr_userid, :string

    field :rqda_action, :string

    field :rqda_date, Conduit.QAD.Types.Date

    field :rqda_time, :integer

    field :rqda_ent_userid, :string

    field :rqda__chr01, :string

    field :rqda__chr02, :string

    field :rqda__chr03, :string

    field :rqda__chr04, :string

    field :rqda__qadc01, :string

    field :rqda__qadc02, :string

    field :rqda__qadc03, :string

    field :rqda__qadc04, :string

    field :rqda_domain, :string

    field :oid_rqda_det, :decimal, primary_key: true

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
