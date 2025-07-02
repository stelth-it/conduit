defmodule Elixir.Conduit.QAD.Table.Cmd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cmd_det" do
    field :cmd_trans_nbr, :integer

    field :cmd_file, :string

    field :cmd_key_val, :string

    field :cmd_field, :string

    field :cmd_val, :string

    field :cmd_user1, :string

    field :cmd_user2, :string

    field :cmd__qadc01, :string

    field :cmd_mod_userid, :string

    field :cmd_mod_date, Conduit.QAD.Types.Date

    field :cmd_ref_date, Conduit.QAD.Types.Date

    field :cmd_ref_time, :integer

    field :cmd_domain, :string

    field :oid_cmd_det, :decimal, primary_key: true

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
