defmodule Elixir.Conduit.QAD.Table.Cnt_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cnt_mstr" do
    field :cnt_sid, :string

    field :cnt_ora_id1, :integer

    field :cnt_ora_id2, :integer

    field :cnt_userid, :string

    field :cnt_application, :string

    field :cnt_time, :integer

    field :cnt_user1, :string

    field :cnt_user2, :string

    field :cnt__qadc01, :string

    field :cnt__qadi01, :integer

    field :cnt__qadd01, :decimal

    field :cnt__qadl01, Conduit.QAD.Types.Bool

    field :cnt__qadt01, Conduit.QAD.Types.Date

    field :cnt_date, Conduit.QAD.Types.Date

    field :oid_cnt_mstr, :decimal, primary_key: true

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
