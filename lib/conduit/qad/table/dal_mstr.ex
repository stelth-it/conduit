defmodule Elixir.Conduit.QAD.Table.Dal_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dal_mstr" do
    field :dal_list_id, :string

    field :dal_list_desc, :string

    field :dal_mod_userid, :string

    field :dal_mod_date, Conduit.QAD.Types.Date

    field :dal_user1, :string

    field :dal_user2, :string

    field :dal__chr01, :string

    field :dal__chr02, :string

    field :dal__dec01, :decimal

    field :dal__dec02, :decimal

    field :dal__int01, :integer

    field :dal__int02, :integer

    field :dal__log01, Conduit.QAD.Types.Bool

    field :dal__log02, Conduit.QAD.Types.Bool

    field :dal__dte01, Conduit.QAD.Types.Date

    field :dal__dte02, Conduit.QAD.Types.Date

    field :dal__qadc01, :string

    field :dal__qadc02, :string

    field :dal__qadc03, :string

    field :dal__qadc04, :string

    field :dal__qadd01, :decimal

    field :dal__qadd02, :decimal

    field :dal__qadi01, :integer

    field :dal__qadi02, :integer

    field :dal__qadl01, Conduit.QAD.Types.Bool

    field :dal__qadl02, Conduit.QAD.Types.Bool

    field :dal__qadt01, Conduit.QAD.Types.Date

    field :dal__qadt02, Conduit.QAD.Types.Date

    field :dal_domain, :string

    field :oid_dal_mstr, :decimal, primary_key: true

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
