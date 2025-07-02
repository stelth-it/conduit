defmodule Elixir.Conduit.QAD.Table.Acod_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_acod_mstr" do
    field :acod_app_id, :string

    field :acod_doc_std, :string

    field :acod_doc_typ, :string

    field :acod_doc_rev, :string

    field :acod_tradptr_id, :string

    field :acod_fldname, :string

    field :acod_src_val, :string

    field :acod_targ_val, :string

    field :acod_desc, :string

    field :acod_mod_userid, :string

    field :acod_mod_date, Conduit.QAD.Types.Date

    field :acod_user1, :string

    field :acod_user2, :string

    field :acod__dec01, :decimal

    field :acod__dec02, :decimal

    field :acod__int01, :integer

    field :acod__int02, :integer

    field :acod__log01, Conduit.QAD.Types.Bool

    field :acod__log02, Conduit.QAD.Types.Bool

    field :acod__dte01, Conduit.QAD.Types.Date

    field :acod__dte02, Conduit.QAD.Types.Date

    field :acod__qadc01, :string

    field :acod__qadc02, :string

    field :acod__qadc03, :string

    field :acod__qadc04, :string

    field :acod__qadd01, :decimal

    field :acod__qadd02, :decimal

    field :acod__qadi01, :integer

    field :acod__qadi02, :integer

    field :acod__qadl01, Conduit.QAD.Types.Bool

    field :acod__qadl02, Conduit.QAD.Types.Bool

    field :acod__qadt01, Conduit.QAD.Types.Date

    field :acod__qadt02, Conduit.QAD.Types.Date

    field :acod_domain, :string

    field :oid_acod_mstr, :decimal, primary_key: true

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
