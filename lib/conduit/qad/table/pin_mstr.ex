defmodule Elixir.Conduit.QAD.Table.Pin_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pin_mstr" do
    field :pin_product, :string

    field :pin_desc, :string

    field :pin_hwm, :integer

    field :pin_control1, :string

    field :pin_control2, :string

    field :pin_control3, :string

    field :pin_control4, :string

    field :pin_control5, :string

    field :pin_inst_date, Conduit.QAD.Types.Date

    field :pin_user1, :string

    field :pin_user2, :string

    field :pin__qadc01, :string

    field :pin__qadi01, :integer

    field :pin__qadd01, :decimal

    field :pin__qadl01, Conduit.QAD.Types.Bool

    field :pin__qadt01, Conduit.QAD.Types.Date

    field :pin_control6, :string

    field :pin_inst_time, :integer

    field :pin_mod_userid, :string

    field :pin_mod_date, Conduit.QAD.Types.Date

    field :pin_aud_days, :integer

    field :pin_aud_ddate, Conduit.QAD.Types.Date

    field :pin_aud_date, Conduit.QAD.Types.Date

    field :pin_aud_user, :string

    field :pin_aud_pswd, :string

    field :pin_aud_nbr, :integer

    field :oid_pin_mstr, :decimal, primary_key: true

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
