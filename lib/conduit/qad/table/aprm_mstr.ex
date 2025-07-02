defmodule Elixir.Conduit.QAD.Table.Aprm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_aprm_mstr" do
    field :aprm_app_id, :string

    field :aprm_mthd_name, :string

    field :aprm_mod_date, Conduit.QAD.Types.Date

    field :aprm_mod_userid, :string

    field :aprm_code, :string

    field :aprm_desc, :string

    field :aprm_seq, :integer

    field :aprm_val, :string

    field :aprm_user1, :string

    field :aprm_user2, :string

    field :aprm__dec01, :decimal

    field :aprm__dec02, :decimal

    field :aprm__int01, :integer

    field :aprm__int02, :integer

    field :aprm__log01, Conduit.QAD.Types.Bool

    field :aprm__log02, Conduit.QAD.Types.Bool

    field :aprm__dte01, Conduit.QAD.Types.Date

    field :aprm__dte02, Conduit.QAD.Types.Date

    field :aprm__qadc01, :string

    field :aprm__qadc02, :string

    field :aprm__qadc03, :string

    field :aprm__qadc04, :string

    field :aprm__qadd01, :decimal

    field :aprm__qadd02, :decimal

    field :aprm__qadi01, :integer

    field :aprm__qadi02, :integer

    field :aprm__qadl01, Conduit.QAD.Types.Bool

    field :aprm__qadl02, Conduit.QAD.Types.Bool

    field :aprm__qadt01, Conduit.QAD.Types.Date

    field :aprm__qadt02, Conduit.QAD.Types.Date

    field :aprm_doc_std, :string

    field :aprm_domain, :string

    field :oid_aprm_mstr, :decimal, primary_key: true

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
