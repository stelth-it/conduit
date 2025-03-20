defmodule Elixir.Conduit.QAD.Table.Cas_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cas_mstr" do
    field :cas_status, :string

    field :cas_desc, :string

    field :cas_id, :integer

    field :cas_prog, :string

    field :cas_req, Conduit.QAD.Types.Bool

    field :cas_nxt_stat, :string

    field :cas__chr01, :string

    field :cas__chr02, :string

    field :cas__log01, Conduit.QAD.Types.Bool

    field :cas__log02, Conduit.QAD.Types.Bool

    field :cas__dte01, Conduit.QAD.Types.Date

    field :cas__dte02, Conduit.QAD.Types.Date

    field :cas__dec01, :decimal

    field :cas__dec02, :decimal

    field :cas__chr03, :string

    field :cas_user1, :string

    field :cas_user2, :string

    field :cas_review, Conduit.QAD.Types.Bool

    field :cas_wait, Conduit.QAD.Types.Bool

    field :cas_hold, Conduit.QAD.Types.Bool

    field :cas_field, Conduit.QAD.Types.Bool

    field :cas_file_type, :string

    field :cas_nxt_que, :string

    field :cas__qadc01, :string

    field :cas__qadc02, :string

    field :cas__qadl01, Conduit.QAD.Types.Bool

    field :cas__qadl02, Conduit.QAD.Types.Bool

    field :cas_mod_userid, :string

    field :cas_mod_date, Conduit.QAD.Types.Date

    field :cas_domain, :string

    field :oid_cas_mstr, :decimal, primary_key: true

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
