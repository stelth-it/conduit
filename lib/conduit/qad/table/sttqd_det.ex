defmodule Elixir.Conduit.QAD.Table.Sttqd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sttqd_det" do
    field :sttqd_acceptable, Conduit.QAD.Types.Bool

    field :sttqd_active, Conduit.QAD.Types.Bool

    field :sttqd_status_code, :string

    field :sttqd_customer_source, :string

    field :sttqd_max_value, :decimal

    field :sttqd_min_value, :decimal

    field :sttqd_part, :string

    field :sttqd_receive_addr, :string

    field :sttqd_shipfrom, :string

    field :sttqd_measurement_type, :integer

    field :sttqd_tracking_measure, :string

    field :sttqd_use_percent, Conduit.QAD.Types.Bool

    field :sttqd_mod_date, Conduit.QAD.Types.Date

    field :sttqd_mod_userid, :string

    field :sttqd_user1, :string

    field :sttqd_user2, :string

    field :sttqd__qadc01, :string

    field :sttqd__qadc02, :string

    field :sttqd_domain, :string

    field :oid_sttqd_det, :decimal, primary_key: true

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
