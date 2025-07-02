defmodule Elixir.Conduit.QAD.Table.Cncs_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cncs_mstr" do
    field :cncs_shipto, :string

    field :cncs_part, :string

    field :cncs_consign_flag, Conduit.QAD.Types.Bool

    field :cncs_max_aging_days, :integer

    field :cncs_consign_loc, :string

    field :cncs_intrans_loc, :string

    field :cncs_auto_replenish, Conduit.QAD.Types.Bool

    field :cncs_mod_userid, :string

    field :cncs_mod_date, Conduit.QAD.Types.Date

    field :cncs_user1, :string

    field :cncs_user2, :string

    field :cncs__qadc01, :string

    field :cncs__qadc02, :string

    field :cncs_domain, :string

    field :oid_cncs_mstr, :decimal, primary_key: true

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
