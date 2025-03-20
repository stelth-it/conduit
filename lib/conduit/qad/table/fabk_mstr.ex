defmodule Elixir.Conduit.QAD.Table.Fabk_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fabk_mstr" do
    field :fabk_id, :string

    field :fabk_desc, :string

    field :fabk_seq, :integer

    field :fabk_post, Conduit.QAD.Types.Bool

    field :fabk_calendar, :string

    field :fabk_mod_userid, :string

    field :fabk_mod_date, Conduit.QAD.Types.Date

    field :fabk_user1, :string

    field :fabk_user2, :string

    field :fabk__chr01, :string

    field :fabk__dec01, :decimal

    field :fabk__log01, Conduit.QAD.Types.Bool

    field :fabk__dte01, Conduit.QAD.Types.Date

    field :fabk__int01, :integer

    field :fabk__qadc01, :string

    field :fabk__qadd01, :decimal

    field :fabk__qadl01, Conduit.QAD.Types.Bool

    field :fabk__qadt01, Conduit.QAD.Types.Date

    field :fabk__qadi01, :integer

    field :fabk__qadc02, :string

    field :fabk_domain, :string

    field :oid_fabk_mstr, :decimal, primary_key: true

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
