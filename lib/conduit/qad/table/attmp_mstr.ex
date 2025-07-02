defmodule Elixir.Conduit.QAD.Table.Attmp_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_attmp_mstr" do
    field :attmp_event_id, :decimal

    field :attmp_table_name, :string

    field :oid_erecord, :decimal, primary_key: true

    field :oid_atap_mstr, :decimal, primary_key: true

    field :attmp_date, Conduit.QAD.Types.Date

    field :attmp_time, :integer

    field :attmp_timezone, :string

    field :attmp_event_type, :string

    field :attmp_source, :string

    field :attmp_userid, :string

    field :attmp_user_name, :string

    field :attmp_pgmi_exec, :string

    field :attmp__qadc03, :string

    field :attmp_record_order, :integer

    field :attmp__qadd01, :decimal

    field :attmp__qadc01, :string

    field :attmp__qadc02, :string

    field :attmp_raw_image, :binary

    field :attmp_exclude_fields, :string

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
