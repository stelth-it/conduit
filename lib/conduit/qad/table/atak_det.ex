defmodule Elixir.Conduit.QAD.Table.Atak_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_atak_det" do
    field :oid_atak_det, :decimal, primary_key: true

    field :oid_atap_mstr, :decimal, primary_key: true

    field :atak_field_name, :string

    field :atak_key_type, :string

    field :atak_mod_date, Conduit.QAD.Types.Date

    field :atak_mod_userid, :string

    field :atak_user1, :string

    field :atak_user2, :string

    field :atak__qadc01, :string

    field :atak__qadc02, :string

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
