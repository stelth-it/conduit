defmodule Elixir.Conduit.QAD.Table.Iraw_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_iraw_det" do
    field :iraw_doc_id, :integer

    field :iraw_doc_line, :integer

    field :iraw_line_cont, Conduit.QAD.Types.Bool

    field :iraw_mod_date, Conduit.QAD.Types.Date

    field :iraw_mod_userid, :string

    field :iraw_data, :string

    field :iraw_user1, :string

    field :iraw_user2, :string

    field :iraw__dec01, :decimal

    field :iraw__dec02, :decimal

    field :iraw__int01, :integer

    field :iraw__int02, :integer

    field :iraw__log01, Conduit.QAD.Types.Bool

    field :iraw__log02, Conduit.QAD.Types.Bool

    field :iraw__dte01, Conduit.QAD.Types.Date

    field :iraw__dte02, Conduit.QAD.Types.Date

    field :iraw__qadc01, :string

    field :iraw__qadc02, :string

    field :iraw__qadc03, :string

    field :iraw__qadc04, :string

    field :iraw__qadd01, :decimal

    field :iraw__qadd02, :decimal

    field :iraw__qadi01, :integer

    field :iraw__qadi02, :integer

    field :iraw__qadl01, Conduit.QAD.Types.Bool

    field :iraw__qadl02, Conduit.QAD.Types.Bool

    field :iraw__qadt01, Conduit.QAD.Types.Date

    field :iraw__qadt02, Conduit.QAD.Types.Date

    field :iraw_domain, :string

    field :oid_iraw_det, :decimal, primary_key: true

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
