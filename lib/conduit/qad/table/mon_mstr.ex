defmodule Elixir.Conduit.QAD.Table.Mon_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mon_mstr" do
    field :mon_userid, :string

    field :mon_sid, :string

    field :mon_ora_id1, :integer

    field :mon_ora_id2, :integer

    field :mon_selection, :string

    field :mon_time_start, :integer

    field :mon_login_time, :integer

    field :mon_idle_time, :integer

    field :mon_program, :string

    field :mon_user1, :string

    field :mon_user2, :string

    field :mon__qadc01, :string

    field :mon__qadi01, :integer

    field :mon__qadd01, :decimal

    field :mon__qadl01, Conduit.QAD.Types.Bool

    field :mon__qadt01, Conduit.QAD.Types.Date

    field :mon_prog_user, :string

    field :mon_login_date, Conduit.QAD.Types.Date

    field :mon_interface, :string

    field :mon_product, :string

    field :mon_date_start, Conduit.QAD.Types.Date

    field :oid_mon_mstr, :decimal, primary_key: true

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
