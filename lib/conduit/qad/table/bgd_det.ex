defmodule Elixir.Conduit.QAD.Table.Bgd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bgd_det" do
    field :bgd_acc, :string

    field :bgd_cc, :string

    field :bgd_project, :string

    field :bgd_ent_dt, Conduit.QAD.Types.Date

    field :bgd_year, :integer

    field :bgd_per, :integer

    field :bgd_amt, :decimal

    field :bgd_pct, :decimal

    field :bgd_fpos, :integer

    field :bgd_entity, :string

    field :bgd_code, :string

    field :bgd_user1, :string

    field :bgd_user2, :string

    field :bgd_userid, :string

    field :bgd_date, Conduit.QAD.Types.Date

    field :bgd_sub, :string

    field :bgd_ecur_amt, :decimal

    field :bgd_en_enrate, :decimal

    field :bgd__qadc01, :string

    field :bgd_domain, :string

    field :oid_bgd_det, :decimal, primary_key: true

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
