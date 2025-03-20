defmodule Elixir.Conduit.QAD.Table.Sosrd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sosrd_det" do
    field :sosrd_dataset, :string

    field :sosrd_line, :integer

    field :sosrd_mod_date, Conduit.QAD.Types.Date

    field :sosrd_mod_userid, :string

    field :sosrd_nbr, :string

    field :sosrd_rsn_code, :string

    field :sosrd_shipfrom, :string

    field :sosrd_abs_id, :string

    field :sosrd_user1, :string

    field :sosrd_user2, :string

    field :sosrd__qadc01, :string

    field :sosrd__qadc02, :string

    field :sosrd_measurement_type, :integer

    field :sosrd_domain, :string

    field :oid_sosrd_det, :decimal, primary_key: true

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
