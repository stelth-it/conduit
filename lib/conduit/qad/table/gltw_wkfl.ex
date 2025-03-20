defmodule Elixir.Conduit.QAD.Table.Gltw_wkfl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gltw_wkfl" do
    field :gltw_entity, :string

    field :gltw_acct, :string

    field :gltw_cc, :string

    field :gltw_ref, :string

    field :gltw_desc, :string

    field :gltw_date, Conduit.QAD.Types.Date

    field :gltw_effdate, Conduit.QAD.Types.Date

    field :gltw_amt, :decimal

    field :gltw_userid, :string

    field :gltw_project, :string

    field :gltw_batch, :string

    field :gltw_addr, :string

    field :gltw_doc, :string

    field :gltw_doc_typ, :string

    field :gltw_user1, :string

    field :gltw_user2, :string

    field :gltw_curr, :string

    field :gltw_curramt, :decimal

    field :gltw_tr_type, :string

    field :gltw_line, :integer

    field :gltw_ex_rate, :decimal

    field :gltw_fx_ind, :string

    field :gltw_sub, :string

    field :gltw_ecur_amt, :decimal

    field :gltw_rflag, Conduit.QAD.Types.Bool

    field :gltw__qadc01, :string

    field :gltw_dy_code, :string

    field :gltw_dy_num, :string

    field :gltw_correction, Conduit.QAD.Types.Bool

    field :gltw_ex_rate2, :decimal

    field :gltw_ex_ratetype, :string

    field :gltw_exru_seq, :integer

    field :gltw_domain, :string

    field :oid_gltw_wkfl, :decimal, primary_key: true

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
