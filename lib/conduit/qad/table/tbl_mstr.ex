defmodule Elixir.Conduit.QAD.Table.Tbl_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tbl_mstr" do
    field :tbl_partype, :string

    field :tbl_parcode, :string

    field :tbl_comptype, :string

    field :tbl_compcode, :string

    field :tbl_start, Conduit.QAD.Types.Date

    field :tbl_end, Conduit.QAD.Types.Date

    field :tbl_ref, :string

    field :tbl_rmks, :string

    field :tbl_user1, :string

    field :tbl_user2, :string

    field :tbl__chr01, :string

    field :tbl__chr02, :string

    field :tbl__chr03, :string

    field :tbl__chr04, :string

    field :tbl__chr05, :string

    field :tbl__dte01, Conduit.QAD.Types.Date

    field :tbl__dte02, Conduit.QAD.Types.Date

    field :tbl__dec01, :decimal

    field :tbl__dec02, :decimal

    field :tbl__log01, Conduit.QAD.Types.Bool

    field :tbl__log02, Conduit.QAD.Types.Bool

    field :tbl__qadc01, :string

    field :tbl__qadc02, :string

    field :tbl__qadd01, Conduit.QAD.Types.Date

    field :tbl__qadd02, Conduit.QAD.Types.Date

    field :tbl__qadde01, :decimal

    field :tbl__qadde02, :decimal

    field :tbl__qadl01, Conduit.QAD.Types.Bool

    field :tbl__qadl02, Conduit.QAD.Types.Bool

    field :tbl_mod_userid, :string

    field :tbl_mod_date, Conduit.QAD.Types.Date

    field :tbl_domain, :string

    field :oid_tbl_mstr, :decimal, primary_key: true

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
