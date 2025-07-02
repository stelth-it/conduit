defmodule Elixir.Conduit.QAD.Table.Csd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_csd_det" do
    field :csd_domain, :string

    field :csd_category, :string

    field :csd_ca_nbr, :string

    field :csd_problem, :string

    field :csd_line, :integer

    field :csd_mod_date, Conduit.QAD.Types.Date

    field :csd_mod_userid, :string

    field :csd_user1, :string

    field :csd_user2, :string

    field :csd__qadc01, :string

    field :csd__qadc02, :string

    field :oid_csd_det, :decimal, primary_key: true

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
