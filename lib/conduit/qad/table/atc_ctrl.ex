defmodule Elixir.Conduit.QAD.Table.Atc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atc_ctrl" do
    field :oid_atc_ctrl, :decimal, primary_key: true

    field :atc_storage_shutdown, Conduit.QAD.Types.Bool

    field :atc_logfile, :string

    field :atc_index1, :integer

    field :atc_mod_date, Conduit.QAD.Types.Date

    field :atc_mod_userid, :string

    field :atc_user1, :string

    field :atc_user2, :string

    field :atc__qadc01, :string

    field :atc__qadc02, :string

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
