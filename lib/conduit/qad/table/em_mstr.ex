defmodule Elixir.Conduit.QAD.Table.Em_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_em_mstr" do
    field :em_system_id, :string

    field :em_desc, :string

    field :em_opsys, :string

    field :em_program, :string

    field :em_sender_parm, :string

    field :em_sender_seq, :integer

    field :em_pswd_parm, :string

    field :em_pswd_seq, :integer

    field :em_recip_parm, :string

    field :em_recip_seq, :integer

    field :em_cc_parm, :string

    field :em_cc_seq, :integer

    field :em_subject_parm, :string

    field :em_subject_seq, :integer

    field :em_msg_parm, :string

    field :em_msg_seq, :integer

    field :em_attach_parm, :string

    field :em_attach_seq, :integer

    field :em_other_parm, :string

    field :em_other_seq, :integer

    field :em_start, Conduit.QAD.Types.Date

    field :em_end, Conduit.QAD.Types.Date

    field :em__chr01, :string

    field :em__chr02, :string

    field :em__chr03, :string

    field :em__chr04, :string

    field :em__qadc01, :string

    field :em__qadc02, :string

    field :em__qadc03, :string

    field :em__qadc04, :string

    field :oid_em_mstr, :decimal, primary_key: true

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
