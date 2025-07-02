defmodule Elixir.Conduit.QAD.Table.Djrc_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_djrc_det" do
    field :djrc_code, :string

    field :djrc_type, :string

    field :djrc_element, :string

    field :djrc_order, :integer

    field :djrc_mod_userid, :string

    field :djrc_mod_date, Conduit.QAD.Types.Date

    field :djrc_total, Conduit.QAD.Types.Bool

    field :djrc_user1, :string

    field :djrc_user2, :string

    field :djrc_userd01, :decimal

    field :djrc_useri01, :integer

    field :djrc_userl01, Conduit.QAD.Types.Bool

    field :djrc_usert01, Conduit.QAD.Types.Date

    field :djrc__qadc01, :string

    field :djrc__qadc02, :string

    field :djrc__qadd01, :decimal

    field :djrc__qadi01, :integer

    field :djrc__qadl01, Conduit.QAD.Types.Bool

    field :djrc__qadt01, Conduit.QAD.Types.Date

    field :djrc_domain, :string

    field :oid_djrc_det, :decimal, primary_key: true

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
