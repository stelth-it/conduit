defmodule Elixir.Conduit.QAD.Table.Sttq_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sttq_mstr" do
    field :sttq_status_code, :string

    field :sttq_desc, :string

    field :sttq_measurement_type, :integer

    field :sttq__qadc01, :string

    field :sttq__qadc02, :string

    field :sttq_mod_userid, :string

    field :sttq_mod_date, Conduit.QAD.Types.Date

    field :sttq_user1, :string

    field :sttq_user2, :string

    field :sttq_domain, :string

    field :oid_sttq_mstr, :decimal, primary_key: true

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
