defmodule Elixir.Conduit.QAD.Table.Tzo_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_tzo_mstr" do
    field :tzo_label, :string

    field :tzo_desc, :string

    field :tzo_area, :string

    field :tzo_auto_adj, Conduit.QAD.Types.Bool

    field :tzo_tzone, :string

    field :tzo_user1, :string

    field :tzo_user2, :string

    field :tzo__chr01, :string

    field :tzo__log01, Conduit.QAD.Types.Bool

    field :tzo__dte01, Conduit.QAD.Types.Date

    field :tzo__int01, :integer

    field :tzo__qadc01, :string

    field :tzo__qadt01, Conduit.QAD.Types.Date

    field :tzo__qadi01, :integer

    field :tzo__qadl01, Conduit.QAD.Types.Bool

    field :tzo_mod_userid, :string

    field :tzo_mod_date, Conduit.QAD.Types.Date

    field :oid_tzo_mstr, :decimal, primary_key: true

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
