defmodule Elixir.Conduit.QAD.Table.Facls_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_facls_mstr" do
    field :facls_id, :string

    field :facls_dep, Conduit.QAD.Types.Bool

    field :facls_desc, :string

    field :facls_mod_userid, :string

    field :facls_mod_date, Conduit.QAD.Types.Date

    field :facls_user1, :string

    field :facls_user2, :string

    field :facls__chr01, :string

    field :facls__dec01, :decimal

    field :facls__log01, Conduit.QAD.Types.Bool

    field :facls__int01, :integer

    field :facls__dte01, Conduit.QAD.Types.Date

    field :facls__qadc01, :string

    field :facls__qadd01, :decimal

    field :facls__qadl01, Conduit.QAD.Types.Bool

    field :facls__qadi01, :integer

    field :facls__qadt01, Conduit.QAD.Types.Date

    field :facls__qadc02, :string

    field :facls_domain, :string

    field :oid_facls_mstr, :decimal, primary_key: true

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
