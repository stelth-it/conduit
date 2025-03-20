defmodule Elixir.Conduit.QAD.Table.Knbrs_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_knbrs_mstr" do
    field :knbrs_dispatch_id, :string

    field :knbrs_dispatch_date, Conduit.QAD.Types.Date

    field :knbrs_dispatch_time, :integer

    field :knbrs_proc_sess, :integer

    field :knbrs_export_batch, :integer

    field :knbrs_mod_date, Conduit.QAD.Types.Date

    field :knbrs_mod_userid, :string

    field :knbrs_user1, :string

    field :knbrs_user2, :string

    field :knbrs__qadc01, :string

    field :knbrs__qadc02, :string

    field :knbrs__qadc03, :string

    field :knbrs__qadc04, :string

    field :knbrs__qadl01, Conduit.QAD.Types.Bool

    field :knbrs__qadl02, Conduit.QAD.Types.Bool

    field :knbrs_domain, :string

    field :oid_knbrs_mstr, :decimal, primary_key: true

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
