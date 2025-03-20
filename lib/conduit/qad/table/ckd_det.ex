defmodule Elixir.Conduit.QAD.Table.Ckd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ckd_det" do
    field :ckd_ref, :string

    field :ckd_voucher, :string

    field :ckd_type, :string

    field :ckd_acct, :string

    field :ckd_cc, :string

    field :ckd_project, :string

    field :ckd_amt, :decimal

    field :ckd_disc, :decimal

    field :ckd_entity, :string

    field :ckd_user1, :string

    field :ckd_user2, :string

    field :ckd_cur_amt, :decimal

    field :ckd_cur_disc, :decimal

    field :ckd_ex_rate, :decimal

    field :ckd__qadc01, :string

    field :ckd_dy_code, :string

    field :ckd_dy_num, :string

    field :ckd_ex_rate2, :decimal

    field :ckd_ex_ratetype, :string

    field :ckd_exru_seq, :integer

    field :ckd_sub, :string

    field :ckd_unapplied_ref, :string

    field :ckd_domain, :string

    field :oid_ckd_det, :decimal, primary_key: true

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
