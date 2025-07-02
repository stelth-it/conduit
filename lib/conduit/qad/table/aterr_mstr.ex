defmodule Elixir.Conduit.QAD.Table.Aterr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_aterr_mstr" do
    field :aterr_event_id, :decimal

    field :aterr_status, :string

    field :aterr_table_name, :string

    field :oid_erecord, :decimal, primary_key: true

    field :oid_atap_mstr, :decimal, primary_key: true

    field :aterr_date, Conduit.QAD.Types.Date

    field :aterr_time, :integer

    field :aterr_timezone, :string

    field :aterr_event_type, :string

    field :aterr_source, :string

    field :aterr_userid, :string

    field :aterr_user_name, :string

    field :aterr_pgmi_exec, :string

    field :aterr_error_code, :string

    field :aterr_record_order, :integer

    field :aterr__qadd01, :decimal

    field :aterr__qadc01, :string

    field :aterr__qadc02, :string

    field :aterr_raw_image, :binary

    field :aterr_exclude_fields, :string

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
