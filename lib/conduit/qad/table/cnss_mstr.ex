defmodule Elixir.Conduit.QAD.Table.Cnss_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cnss_mstr" do
    field :cnss_supplier, :string

    field :cnss_part, :string

    field :cnss_consign_flag, Conduit.QAD.Types.Bool

    field :cnss_max_aging_days, :integer

    field :cnss_mod_userid, :string

    field :cnss_mod_date, Conduit.QAD.Types.Date

    field :cnss_user1, :string

    field :cnss_user2, :string

    field :cnss__qadc01, :string

    field :cnss__qadc02, :string

    field :cnss_domain, :string

    field :oid_cnss_mstr, :decimal, primary_key: true

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
