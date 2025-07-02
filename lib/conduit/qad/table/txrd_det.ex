defmodule Elixir.Conduit.QAD.Table.Txrd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_txrd_det" do
    field :txrd_code, :string

    field :txrd_ref, :string

    field :txrd_mod_date, Conduit.QAD.Types.Date

    field :txrd_mod_userid, :string

    field :txrd_register, :string

    field :txrd_site, :string

    field :txrd_tran_type, :string

    field :txrd_user1, :string

    field :txrd_user2, :string

    field :txrd_userd01, :decimal

    field :txrd_useri01, :integer

    field :txrd_userl01, Conduit.QAD.Types.Bool

    field :txrd_usert01, Conduit.QAD.Types.Date

    field :txrd__qadc01, :string

    field :txrd__qadc02, :string

    field :txrd__qadd01, :decimal

    field :txrd__qadi01, :integer

    field :txrd__qadl01, Conduit.QAD.Types.Bool

    field :txrd__qadt01, Conduit.QAD.Types.Date

    field :txrd_domain, :string

    field :oid_txrd_det, :decimal, primary_key: true

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
