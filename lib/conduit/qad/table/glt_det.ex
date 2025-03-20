defmodule Elixir.Conduit.QAD.Table.Glt_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_glt_det" do
    field :glt_entity, :string

    field :glt_acct, :string

    field :glt_cc, :string

    field :glt_ref, :string

    field :glt_desc, :string

    field :glt_date, Conduit.QAD.Types.Date

    field :glt_effdate, Conduit.QAD.Types.Date

    field :glt_amt, :decimal

    field :glt_userid, :string

    field :glt_project, :string

    field :glt_batch, :string

    field :glt_curr, :string

    field :glt_curr_amt, :decimal

    field :glt_unb, Conduit.QAD.Types.Bool

    field :glt_tr_type, :string

    field :glt_error, :string

    field :glt_line, :integer

    field :glt_ex_rate, :decimal

    field :glt_addr, :string

    field :glt_doc, :string

    field :glt_doc_type, :string

    field :glt_user1, :string

    field :glt_user2, :string

    field :glt_fx_ind, :string

    field :glt_sub, :string

    field :glt_rflag, Conduit.QAD.Types.Bool

    field :glt_ecur_amt, :decimal

    field :glt_en_exrate, :decimal

    field :glt_entr_exrate, :decimal

    field :glt_per, :integer

    field :glt_year, :integer

    field :glt__qadc01, :string

    field :glt_correction, Conduit.QAD.Types.Bool

    field :glt_dy_code, :string

    field :glt_dy_num, :string

    field :glt_ex_rate2, :decimal

    field :glt_ex_ratetype, :string

    field :glt_en_exrate2, :decimal

    field :glt_exru_seq, :integer

    field :glt_en_exru_seq, :integer

    field :glt_src_desc, :string

    field :glt_domain, :string

    field :oid_glt_det, :decimal, primary_key: true

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
