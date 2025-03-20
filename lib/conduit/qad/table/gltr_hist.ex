defmodule Elixir.Conduit.QAD.Table.Gltr_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gltr_hist" do
    field :gltr_acc, :string

    field :gltr_ctr, :string

    field :gltr_tr_type, :string

    field :gltr_ent_dt, Conduit.QAD.Types.Date

    field :gltr_eff_dt, Conduit.QAD.Types.Date

    field :gltr_amt, :decimal

    field :gltr_ref, :string

    field :gltr_desc, :string

    field :gltr_unb, Conduit.QAD.Types.Bool

    field :gltr_user, :string

    field :gltr_project, :string

    field :gltr_error, :string

    field :gltr_batch, :string

    field :gltr_curr, :string

    field :gltr_curramt, :decimal

    field :gltr_entity, :string

    field :gltr_line, :integer

    field :gltr_ex_rate, :decimal

    field :gltr_export, Conduit.QAD.Types.Bool

    field :gltr_addr, :string

    field :gltr_doc, :string

    field :gltr_doc_typ, :string

    field :gltr_user1, :string

    field :gltr_user2, :string

    field :gltr_fx_ind, :string

    field :gltr_sub, :string

    field :gltr_rflag, Conduit.QAD.Types.Bool

    field :gltr_ecur_amt, :decimal

    field :gltr_en_exrate, :decimal

    field :gltr__qadc01, :string

    field :gltr_correction, Conduit.QAD.Types.Bool

    field :gltr_dy_code, :string

    field :gltr_dy_num, :string

    field :gltr_ex_rate2, :decimal

    field :gltr_ex_ratetype, :string

    field :gltr_en_exrate2, :decimal

    field :gltr_exru_seq, :integer

    field :gltr_en_exru_seq, :integer

    field :gltr_src_desc, :string

    field :gltr_domain, :string

    field :oid_gltr_hist, :decimal, primary_key: true

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
