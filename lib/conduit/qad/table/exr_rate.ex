defmodule Elixir.Conduit.QAD.Table.Exr_rate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_exr_rate" do
    field :exr_curr1, :string

    field :exr_curr2, :string

    field :exr_start_date, Conduit.QAD.Types.Date

    field :exr_end_date, Conduit.QAD.Types.Date

    field :exr_rate, :decimal

    field :exr_rate2, :decimal

    field :exr_ratetype, :string

    field :exr_mod_userid, :string

    field :exr_mod_date, Conduit.QAD.Types.Date

    field :exr_user1, :string

    field :exr_user2, :string

    field :exr__qadc01, :string

    field :exr__qadd01, :decimal

    field :exr__qadl01, Conduit.QAD.Types.Bool

    field :exr__qadt01, Conduit.QAD.Types.Date

    field :exr_domain, :string

    field :oid_exr_rate, :decimal, primary_key: true

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
