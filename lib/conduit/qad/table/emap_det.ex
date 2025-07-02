defmodule Elixir.Conduit.QAD.Table.Emap_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_emap_det" do
    field :emap_doc_id, :integer

    field :emap_doc_line, :integer

    field :emap_line_cont, Conduit.QAD.Types.Bool

    field :emap_data, :string

    field :emap_mod_date, Conduit.QAD.Types.Date

    field :emap_mod_userid, :string

    field :emap_doc_sufx, :integer

    field :emap_user1, :string

    field :emap_user2, :string

    field :emap__dec01, :decimal

    field :emap__dec02, :decimal

    field :emap__int01, :integer

    field :emap__int02, :integer

    field :emap__log01, Conduit.QAD.Types.Bool

    field :emap__log02, Conduit.QAD.Types.Bool

    field :emap__dte01, Conduit.QAD.Types.Date

    field :emap__dte02, Conduit.QAD.Types.Date

    field :emap__qadc01, :string

    field :emap__qadc02, :string

    field :emap__qadc03, :string

    field :emap__qadc04, :string

    field :emap__qadd01, :decimal

    field :emap__qadd02, :decimal

    field :emap__qadi01, :integer

    field :emap__qadi02, :integer

    field :emap__qadl01, Conduit.QAD.Types.Bool

    field :emap__qadl02, Conduit.QAD.Types.Bool

    field :emap__qadt01, Conduit.QAD.Types.Date

    field :emap__qadt02, Conduit.QAD.Types.Date

    field :emap_domain, :string

    field :oid_emap_det, :decimal, primary_key: true

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
