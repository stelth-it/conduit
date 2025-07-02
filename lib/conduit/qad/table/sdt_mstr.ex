defmodule Elixir.Conduit.QAD.Table.Sdt_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sdt_mstr" do
    field :sdt_code, :string

    field :sdt_desc, :string

    field :sdt_mod_userid, :string

    field :sdt_mod_date, Conduit.QAD.Types.Date

    field :sdt__user1, :string

    field :sdt__user2, :string

    field :sdt__chr01, :string

    field :sdt__chr02, :string

    field :sdt__dec01, :decimal

    field :sdt__dec02, :decimal

    field :sdt__dte01, Conduit.QAD.Types.Date

    field :sdt__dte02, Conduit.QAD.Types.Date

    field :sdt__log01, Conduit.QAD.Types.Bool

    field :sdt__log02, Conduit.QAD.Types.Bool

    field :sdt__qadc01, :string

    field :sdt__qadc02, :string

    field :sdt__qadd01, :decimal

    field :sdt__qadd02, :decimal

    field :sdt__qadl01, Conduit.QAD.Types.Bool

    field :sdt__qadl02, Conduit.QAD.Types.Bool

    field :sdt__qadt01, Conduit.QAD.Types.Date

    field :sdt__qadt02, Conduit.QAD.Types.Date

    field :sdt__qadi01, :integer

    field :sdt__qadi02, :integer

    field :sdt_domain, :string

    field :oid_sdt_mstr, :decimal, primary_key: true

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
