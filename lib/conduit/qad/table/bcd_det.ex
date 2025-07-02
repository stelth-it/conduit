defmodule Elixir.Conduit.QAD.Table.Bcd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bcd_det" do
    field :bcd_batch, :string

    field :bcd_date_sub, Conduit.QAD.Types.Date

    field :bcd_time_sub, :string

    field :bcd_userid, :string

    field :bcd_priority, :integer

    field :bcd_exec, :string

    field :bcd_dev, :string

    field :bcd_perm, Conduit.QAD.Types.Bool

    field :bcd_process, Conduit.QAD.Types.Bool

    field :bcd_date_run, Conduit.QAD.Types.Date

    field :bcd_time_run, :string

    field :bcd_run_stat, :string

    field :bcd_parm, :string

    field :bcd_user1, :string

    field :bcd_user2, :string

    field :bcd_mnu_nbr, :string

    field :bcd_mnu_sel, :integer

    field :bcd__qadc01, :string

    field :bcd_domain, :string

    field :oid_bcd_det, :decimal, primary_key: true

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
