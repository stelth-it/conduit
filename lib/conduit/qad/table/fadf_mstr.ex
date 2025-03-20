defmodule Elixir.Conduit.QAD.Table.Fadf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fadf_mstr" do
    field :fadf_facls_id, :string

    field :fadf_fabk_id, :string

    field :fadf_famt_id, :string

    field :fadf_famt_elife, :decimal

    field :fadf_mod_userid, :string

    field :fadf_mod_date, Conduit.QAD.Types.Date

    field :fadf_user1, :string

    field :fadf_user2, :string

    field :fadf__chr01, :string

    field :fadf__dec01, :decimal

    field :fadf__log01, Conduit.QAD.Types.Bool

    field :fadf__dte01, Conduit.QAD.Types.Date

    field :fadf__int01, :integer

    field :fadf__qadc01, :string

    field :fadf__qadd01, :decimal

    field :fadf__qadl01, Conduit.QAD.Types.Bool

    field :fadf__qadi01, :integer

    field :fadf__qadt01, Conduit.QAD.Types.Date

    field :fadf_domain, :string

    field :oid_fadf_mstr, :decimal, primary_key: true

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
