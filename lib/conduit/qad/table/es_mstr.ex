defmodule Elixir.Conduit.QAD.Table.Es_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_es_mstr" do
    field :es_time_in, :string

    field :es_ca_problem, :string

    field :es_ca_severity, :string

    field :es_seq, :integer

    field :es_ca_type, :string

    field :es_ca_category, :string

    field :es_nbr, :string

    field :es_esc_program, :string

    field :es_program, :string

    field :es_next_status, :string

    field :es_next_que, :string

    field :es_desc, :string

    field :es_cmtindx, :integer

    field :es_page, Conduit.QAD.Types.Bool

    field :es_pri_bump, :integer

    field :es_print, Conduit.QAD.Types.Bool

    field :es_message, Conduit.QAD.Types.Bool

    field :es_group, :string

    field :es_escalate, Conduit.QAD.Types.Bool

    field :es_ca_pri, :integer

    field :es_days_in, :integer

    field :es_user1, :string

    field :es_user2, :string

    field :es__chr01, :string

    field :es__chr02, :string

    field :es__chr03, :string

    field :es__chr04, :string

    field :es__dec01, :decimal

    field :es__dec02, :decimal

    field :es__dec03, :decimal

    field :es__dte01, Conduit.QAD.Types.Date

    field :es__dte02, Conduit.QAD.Types.Date

    field :es__dte03, Conduit.QAD.Types.Date

    field :es__log01, Conduit.QAD.Types.Bool

    field :es__log02, Conduit.QAD.Types.Bool

    field :es__log03, Conduit.QAD.Types.Bool

    field :es__qadc01, :string

    field :es__qadc02, :string

    field :es__qadc03, :string

    field :es__qadc04, :string

    field :es__qadd01, Conduit.QAD.Types.Date

    field :es__qadd02, Conduit.QAD.Types.Date

    field :es__qadd03, Conduit.QAD.Types.Date

    field :es__qadde01, :decimal

    field :es__qadde02, :decimal

    field :es__qadde03, :decimal

    field :es__qadl01, Conduit.QAD.Types.Bool

    field :es__qadl02, Conduit.QAD.Types.Bool

    field :es__qadl03, Conduit.QAD.Types.Bool

    field :es_ca_int_type, :string

    field :es_message_list, :string

    field :es_prefix, :string

    field :es_doc_desc, {:array, :string}

    field :es_doc_exec, {:array, :string}

    field :es_due_date, Conduit.QAD.Types.Date

    field :es_ca_status, :string

    field :es_itm_line, :integer

    field :es_es_nbr, :string

    field :es_act_date, Conduit.QAD.Types.Date

    field :es_repair_step, :string

    field :es_docs_printed, Conduit.QAD.Types.Bool

    field :es_doc_printed, {:array, Conduit.QAD.Types.Bool}

    field :es_doc_printit, {:array, Conduit.QAD.Types.Bool}

    field :es_initial_date, Conduit.QAD.Types.Date

    field :es_doc_printer, {:array, :string}

    field :es_doc_paged, {:array, Conduit.QAD.Types.Bool}

    field :es_domain, :string

    field :oid_es_mstr, :decimal, primary_key: true

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
