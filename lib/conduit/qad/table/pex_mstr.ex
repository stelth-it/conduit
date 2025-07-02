defmodule Elixir.Conduit.QAD.Table.Pex_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pex_mstr" do
    field :pex_product, :string

    field :pex_desc, :string

    field :pex_hwm, :integer

    field :pex_control1, :string

    field :pex_control2, :string

    field :pex_control3, :string

    field :pex_control4, :string

    field :pex_control5, :string

    field :pex_inst_date, Conduit.QAD.Types.Date

    field :pex_user1, :string

    field :pex_user2, :string

    field :pex__qadc01, :string

    field :pex__qadi01, :integer

    field :pex__qadd01, :decimal

    field :pex__qadl01, Conduit.QAD.Types.Bool

    field :pex__qadt01, Conduit.QAD.Types.Date

    field :pex_control6, :string

    field :pex_inst_time, :integer

    field :pex_mod_userid, :string

    field :pex_mod_date, Conduit.QAD.Types.Date

    field :pex_aud_days, :integer

    field :pex_aud_ddate, Conduit.QAD.Types.Date

    field :pex_aud_date, Conduit.QAD.Types.Date

    field :pex_aud_user, :string

    field :pex_aud_pswd, :string

    field :pex_aud_nbr, :integer

    field :oid_pex_mstr, :decimal, primary_key: true

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
