defmodule Elixir.Conduit.QAD.Table.Imap_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_imap_det" do
    field :imap_doc_id, :integer

    field :imap_doc_line, :integer

    field :imap_line_cont, Conduit.QAD.Types.Bool

    field :imap_data, :string

    field :imap_mod_date, Conduit.QAD.Types.Date

    field :imap_mod_userid, :string

    field :imap_doc_sufx, :integer

    field :imap_user1, :string

    field :imap_user2, :string

    field :imap__dec01, :decimal

    field :imap__dec02, :decimal

    field :imap__int01, :integer

    field :imap__int02, :integer

    field :imap__log01, Conduit.QAD.Types.Bool

    field :imap__log02, Conduit.QAD.Types.Bool

    field :imap__dte01, Conduit.QAD.Types.Date

    field :imap__dte02, Conduit.QAD.Types.Date

    field :imap__qadc01, :string

    field :imap__qadc02, :string

    field :imap__qadc03, :string

    field :imap__qadc04, :string

    field :imap__qadd01, :decimal

    field :imap__qadd02, :decimal

    field :imap__qadi01, :integer

    field :imap__qadi02, :integer

    field :imap__qadl01, Conduit.QAD.Types.Bool

    field :imap__qadl02, Conduit.QAD.Types.Bool

    field :imap__qadt01, Conduit.QAD.Types.Date

    field :imap__qadt02, Conduit.QAD.Types.Date

    field :imap_domain, :string

    field :oid_imap_det, :decimal, primary_key: true

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
