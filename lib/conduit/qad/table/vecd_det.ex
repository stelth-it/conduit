defmodule Elixir.Conduit.QAD.Table.Vecd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vecd_det" do
    field :vecd_category, :string

    field :vecd_value_from, :decimal

    field :vecd_value_to, :decimal

    field :vecd_percent, :decimal

    field :vecd_mod_userid, :string

    field :vecd_mod_date, Conduit.QAD.Types.Date

    field :vecd_user1, :string

    field :vecd_user2, :string

    field :vecd_user3, :string

    field :vecd_user4, :string

    field :vecd__qadc01, :string

    field :vecd__qadc02, :string

    field :vecd__qadc03, :string

    field :vecd__qadc04, :string

    field :vecd__qadd01, :decimal

    field :vecd__qadd02, :decimal

    field :vecd__qadl01, Conduit.QAD.Types.Bool

    field :vecd__qadl02, Conduit.QAD.Types.Bool

    field :vecd__qadt01, Conduit.QAD.Types.Date

    field :vecd__qadt02, Conduit.QAD.Types.Date

    field :vecd__qadi01, :integer

    field :vecd__qadi02, :integer

    field :vecd_domain, :string

    field :oid_vecd_det, :decimal, primary_key: true

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
