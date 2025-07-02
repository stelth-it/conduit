defmodule Elixir.Conduit.QAD.Table.Fpst_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fpst_mstr" do
    field :fpst_desc, :string

    field :fpst_good, Conduit.QAD.Types.Bool

    field :fpst_scrap, Conduit.QAD.Types.Bool

    field :fpst_status, :string

    field :fpst_return, Conduit.QAD.Types.Bool

    field :fpst_exchange, Conduit.QAD.Types.Bool

    field :fpst_pending, Conduit.QAD.Types.Bool

    field :fpst_mod_date, Conduit.QAD.Types.Date

    field :fpst_mod_userid, :string

    field :fpst_user1, :string

    field :fpst_user2, :string

    field :fpst__chr01, :string

    field :fpst__chr02, :string

    field :fpst__log01, Conduit.QAD.Types.Bool

    field :fpst__log02, Conduit.QAD.Types.Bool

    field :fpst__dte01, Conduit.QAD.Types.Date

    field :fpst__dec01, :decimal

    field :fpst__qadc01, :string

    field :fpst__qadc02, :string

    field :fpst__qadl01, Conduit.QAD.Types.Bool

    field :fpst__qadl02, Conduit.QAD.Types.Bool

    field :fpst__qadt01, Conduit.QAD.Types.Date

    field :fpst__qade01, :decimal

    field :fpst_domain, :string

    field :oid_fpst_mstr, :decimal, primary_key: true

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
