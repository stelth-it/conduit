defmodule Elixir.Conduit.QAD.Table.Csbd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_csbd_det" do
    field :csbd_addr, :string

    field :csbd_bank, :string

    field :csbd_edi, :string

    field :csbd_branch, :string

    field :csbd_bk_acct, :string

    field :csbd_type, :string

    field :csbd_end_date, Conduit.QAD.Types.Date

    field :csbd_beg_date, Conduit.QAD.Types.Date

    field :csbd_userid, :string

    field :csbd_mod_date, Conduit.QAD.Types.Date

    field :csbd_user1, :string

    field :csbd_user2, :string

    field :csbd__chr01, :string

    field :csbd__chr02, :string

    field :csbd__chr03, :string

    field :csbd__chr04, :string

    field :csbd__chr05, :string

    field :csbd__dec01, :decimal

    field :csbd__dec02, :decimal

    field :csbd__dte01, Conduit.QAD.Types.Date

    field :csbd__dte02, Conduit.QAD.Types.Date

    field :csbd__log01, Conduit.QAD.Types.Bool

    field :csbd__log02, Conduit.QAD.Types.Bool

    field :csbd__qad01, :string

    field :csbd__qad02, :string

    field :csbd__qad03, :decimal

    field :csbd__qad04, :decimal

    field :csbd__qad05, Conduit.QAD.Types.Date

    field :csbd__qad06, Conduit.QAD.Types.Date

    field :csbd__qad07, Conduit.QAD.Types.Bool

    field :csbd__qad08, Conduit.QAD.Types.Bool

    field :csbd_validation, :string

    field :csbd_domain, :string

    field :oid_csbd_det, :decimal, primary_key: true

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
