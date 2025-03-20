defmodule Elixir.Conduit.QAD.Table.Scc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_scc_mstr" do
    field :scc_shipfrom, :string

    field :scc_part, :string

    field :scc_active, Conduit.QAD.Types.Bool

    field :scc_use_current, Conduit.QAD.Types.Bool

    field :scc_ship_lt, :integer

    field :scc_sched_type, :integer

    field :scc_customer_source, :string

    field :scc_receive_addr, :string

    field :scc_include_so, Conduit.QAD.Types.Bool

    field :scc_include_sched, Conduit.QAD.Types.Bool

    field :scc_include_rma, Conduit.QAD.Types.Bool

    field :scc_include_mo, Conduit.QAD.Types.Bool

    field :scc_include_do, Conduit.QAD.Types.Bool

    field :scc__qadc01, :string

    field :scc__qadc02, :string

    field :scc_mod_userid, :string

    field :scc_mod_date, Conduit.QAD.Types.Date

    field :scc_user1, :string

    field :scc_user2, :string

    field :scc_domain, :string

    field :oid_scc_mstr, :decimal, primary_key: true

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
