defmodule Elixir.Conduit.QAD.Table.Eraw_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eraw_det" do
    field :eraw_doc_id, :integer

    field :eraw_doc_line, :integer

    field :eraw_mod_date, Conduit.QAD.Types.Date

    field :eraw_mod_userid, :string

    field :eraw_data, :string

    field :eraw_user1, :string

    field :eraw_user2, :string

    field :eraw__dec01, :decimal

    field :eraw__dec02, :decimal

    field :eraw__int01, :integer

    field :eraw__int02, :integer

    field :eraw__log01, Conduit.QAD.Types.Bool

    field :eraw__log02, Conduit.QAD.Types.Bool

    field :eraw__dte01, Conduit.QAD.Types.Date

    field :eraw__dte02, Conduit.QAD.Types.Date

    field :eraw__qadc01, :string

    field :eraw__qadc02, :string

    field :eraw__qadc03, :string

    field :eraw__qadc04, :string

    field :eraw__qadd01, :decimal

    field :eraw__qadd02, :decimal

    field :eraw__qadi01, :integer

    field :eraw__qadi02, :integer

    field :eraw__qadl01, Conduit.QAD.Types.Bool

    field :eraw__qadl02, Conduit.QAD.Types.Bool

    field :eraw__qadt01, Conduit.QAD.Types.Date

    field :eraw__qadt02, Conduit.QAD.Types.Date

    field :eraw_line_cont, Conduit.QAD.Types.Bool

    field :eraw_domain, :string

    field :oid_eraw_det, :decimal, primary_key: true

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
