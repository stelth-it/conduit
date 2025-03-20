defmodule Elixir.Conduit.QAD.Table.Sca_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sca_mstr" do
    field :sca_service, :string

    field :sca_part, :string

    field :sca_amount, :decimal

    field :sca_amt_type, :string

    field :sca_cycle, :string

    field :sca_pct_type, :string

    field :sca_priority, :integer

    field :sca_desc, :string

    field :sca_start, Conduit.QAD.Types.Date

    field :sca_expire, Conduit.QAD.Types.Date

    field :sca_prodline, :string

    field :sca_user1, :string

    field :sca_user2, :string

    field :sca_mod_userid, :string

    field :sca_mod_date, Conduit.QAD.Types.Date

    field :sca__chr01, :string

    field :sca__chr02, :string

    field :sca__dte01, Conduit.QAD.Types.Date

    field :sca__dte02, Conduit.QAD.Types.Date

    field :sca__chr03, :string

    field :sca__dec01, :decimal

    field :sca__qadc01, :string

    field :sca__qadc02, :string

    field :sca__qadc03, :string

    field :sca__qadt01, Conduit.QAD.Types.Date

    field :sca__qadt02, Conduit.QAD.Types.Date

    field :sca__qade01, :decimal

    field :sca_domain, :string

    field :oid_sca_mstr, :decimal, primary_key: true

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
