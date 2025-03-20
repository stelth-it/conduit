defmodule Elixir.Conduit.QAD.Table.Facd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_facd_det" do
    field :facd_facls_id, :string

    field :facd_fabk_id, :string

    field :facd_acctype, :string

    field :facd_acct, :string

    field :facd_mod_userid, :string

    field :facd_mod_date, Conduit.QAD.Types.Date

    field :facd_user1, :string

    field :facd_user2, :string

    field :facd__chr01, :string

    field :facd__dec01, :decimal

    field :facd__log01, Conduit.QAD.Types.Bool

    field :facd__dte01, Conduit.QAD.Types.Date

    field :facd__int01, :integer

    field :facd__qadc01, :string

    field :facd__qadd01, :decimal

    field :facd__qadi01, :integer

    field :facd__qadl01, Conduit.QAD.Types.Bool

    field :facd__qadt01, Conduit.QAD.Types.Date

    field :facd_domain, :string

    field :oid_facd_det, :decimal, primary_key: true

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
