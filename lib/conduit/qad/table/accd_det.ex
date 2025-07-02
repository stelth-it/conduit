defmodule Elixir.Conduit.QAD.Table.Accd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_accd_det" do
    field :accd_asset, :string

    field :accd_desc, :string

    field :accd_book, :string

    field :accd_date, Conduit.QAD.Types.Date

    field :accd_amt, :decimal

    field :accd_curr, :string

    field :accd_curr_amt, :decimal

    field :accd_ex_rate, :decimal

    field :accd_ent_ex, :decimal

    field :accd_life_yr, :integer

    field :accd_life_mnth, :integer

    field :accd_userid, :string

    field :accd_mod_date, Conduit.QAD.Types.Date

    field :accd_line, :integer

    field :accd_user1, :string

    field :accd_user2, :string

    field :accd__qadc01, :string

    field :accd_ex_rate2, :decimal

    field :accd_ex_ratetype, :string

    field :accd_exru_seq, :integer

    field :oid_accd_det, :decimal, primary_key: true

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
