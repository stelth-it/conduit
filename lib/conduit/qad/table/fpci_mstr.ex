defmodule Elixir.Conduit.QAD.Table.Fpci_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fpci_mstr" do
    field :fpci_index, :string

    field :fpci_mod_date, Conduit.QAD.Types.Date

    field :fpci_reval_link, :decimal

    field :fpci_userid, :string

    field :fpci_values, {:array, :decimal}

    field :fpci_year, :integer

    field :fpci__chr01, :string

    field :fpci__chr02, :string

    field :fpci__chr03, :string

    field :fpci__chr04, :string

    field :fpci__dec01, :decimal

    field :fpci__dec02, :decimal

    field :fpci__dec03, :decimal

    field :fpci__dte01, Conduit.QAD.Types.Date

    field :fpci__dte02, Conduit.QAD.Types.Date

    field :fpci__dte03, Conduit.QAD.Types.Date

    field :fpci__log01, Conduit.QAD.Types.Bool

    field :fpci__log02, Conduit.QAD.Types.Bool

    field :fpci__log03, Conduit.QAD.Types.Bool

    field :fpci__qadc01, :string

    field :fpci__qadc02, :string

    field :fpci__qadc03, :string

    field :fpci__qadc04, :string

    field :fpci__qadd01, Conduit.QAD.Types.Date

    field :fpci__qadd02, Conduit.QAD.Types.Date

    field :fpci__qadd03, Conduit.QAD.Types.Date

    field :fpci__qadde01, :decimal

    field :fpci__qadde02, :decimal

    field :fpci__qadde03, :decimal

    field :fpci__qadl01, Conduit.QAD.Types.Bool

    field :fpci__qadl02, Conduit.QAD.Types.Bool

    field :fpci__qadl03, Conduit.QAD.Types.Bool

    field :fpci_user1, :string

    field :fpci_user2, :string

    field :fpci_domain, :string

    field :oid_fpci_mstr, :decimal, primary_key: true

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
