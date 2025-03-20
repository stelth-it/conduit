defmodule Elixir.Conduit.QAD.Table.Cal_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cal_det" do
    field :cal_ref, :string

    field :cal_wkctr, :string

    field :cal_mch, :string

    field :cal_start, Conduit.QAD.Types.Date

    field :cal_end, Conduit.QAD.Types.Date

    field :cal_hours, :decimal

    field :cal_user1, :string

    field :cal_user2, :string

    field :cal_shift1, :decimal

    field :cal_shift2, :decimal

    field :cal_shift3, :decimal

    field :cal_shift4, :decimal

    field :cal_site, :string

    field :cal__qadc01, :string

    field :cal_domain, :string

    field :oid_cal_det, :decimal, primary_key: true

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
