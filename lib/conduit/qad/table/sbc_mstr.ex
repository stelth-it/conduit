defmodule Elixir.Conduit.QAD.Table.Sbc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sbc_mstr" do
    field :sbc_code, :string

    field :sbc_desc, :string

    field :sbc_duration, :integer

    field :sbc_qty_bill, :decimal

    field :sbc__chr01, :string

    field :sbc__chr02, :string

    field :sbc__chr03, :string

    field :sbc__chr04, :string

    field :sbc__chr05, :string

    field :sbc_user1, :string

    field :sbc_user2, :string

    field :sbc_um, :string

    field :sbc_mod_userid, :string

    field :sbc_mod_date, Conduit.QAD.Types.Date

    field :sbc__qadc01, :string

    field :sbc__qadc02, :string

    field :sbc__qadc03, :string

    field :sbc__qadd01, :decimal

    field :sbc__qadl01, Conduit.QAD.Types.Bool

    field :sbc_domain, :string

    field :oid_sbc_mstr, :decimal, primary_key: true

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
