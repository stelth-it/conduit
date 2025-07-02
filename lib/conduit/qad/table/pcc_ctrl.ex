defmodule Elixir.Conduit.QAD.Table.Pcc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pcc_ctrl" do
    field :pcc__qadi01, :integer

    field :pcc_auto_nbr, Conduit.QAD.Types.Bool

    field :pcc_cmmt_type, :string

    field :pcc_security_on, Conduit.QAD.Types.Bool

    field :pcc_max_wkfl, :integer

    field :pcc_struct_ok, Conduit.QAD.Types.Bool

    field :pcc_routing_ok, Conduit.QAD.Types.Bool

    field :pcc_qspec_ok, Conduit.QAD.Types.Bool

    field :pcc_quality_ok, Conduit.QAD.Types.Bool

    field :pcc_initial_date, Conduit.QAD.Types.Date

    field :pcc_ecooff_date, Conduit.QAD.Types.Date

    field :pcc_comm_lang, :string

    field :pcc_pco_pre, {:array, :string}

    field :pcc_next_pco, {:array, :integer}

    field :pcc_db_seq, :integer

    field :pcc_user1, :string

    field :pcc_user2, :string

    field :pcc__qadc01, :string

    field :pcc_formula_ok, Conduit.QAD.Types.Bool

    field :pcc_process_ok, Conduit.QAD.Types.Bool

    field :pcc_domain, :string

    field :oid_pcc_ctrl, :decimal, primary_key: true

    field :pcc_enforce_seq, Conduit.QAD.Types.Bool

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
