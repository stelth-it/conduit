defmodule Elixir.Conduit.QAD.Table.Hwm_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_hwm_det" do
    field :hwm_product, :string

    field :hwm_date, Conduit.QAD.Types.Date

    field :hwm_time, :integer

    field :hwm_userid, :string

    field :hwm_sid, :string

    field :hwm_lic_type, :string

    field :hwm_cnt, :integer

    field :hwm_lic_cnt, :integer

    field :hwm__qadc01, :string

    field :hwm__qadc02, :string

    field :hwm__qadd01, :decimal

    field :hwm__qadt01, Conduit.QAD.Types.Date

    field :oid_hwm_det, :decimal, primary_key: true

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
