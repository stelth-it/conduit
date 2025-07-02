defmodule Elixir.Conduit.QAD.Table.Dprd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dprd_det" do
    field :dprd_asset, :string

    field :dprd_entity, :string

    field :dprd_book, :string

    field :dprd_pd, :integer

    field :dprd_pd_date, Conduit.QAD.Types.Date

    field :dprd_amt, :decimal

    field :dprd_curr_amt, :decimal

    field :dprd_ex_rate, :decimal

    field :dprd_ent_ex, :decimal

    field :dprd_post, Conduit.QAD.Types.Bool

    field :dprd_effdate, Conduit.QAD.Types.Date

    field :dprd_acct, :string

    field :dprd_sub, :string

    field :dprd_cc, :string

    field :dprd_proj, :string

    field :dprd_type, :string

    field :dprd_line, :integer

    field :dprd_method, :string

    field :dprd__qad01, :string

    field :dprd__qad02, :string

    field :dprd_pd_closed, Conduit.QAD.Types.Bool

    field :dprd_rflag, Conduit.QAD.Types.Bool

    field :dprd_ref, :string

    field :dprd_gl_line, :integer

    field :dprd_user1, :string

    field :dprd_user2, :string

    field :dprd_desc, :string

    field :dprd_cost_pct, :decimal

    field :dprd_ex_rate2, :decimal

    field :dprd_ex_ratetype, :string

    field :dprd_exru_seq, :integer

    field :oid_dprd_det, :decimal, primary_key: true

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
