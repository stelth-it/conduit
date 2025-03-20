defmodule Elixir.Conduit.QAD.Table.Vee_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vee_mstr" do
    field :vee_event, :string

    field :vee_name, :string

    field :vee_desc, :string

    field :vee_points, :decimal

    field :vee_mod_userid, :string

    field :vee_mod_date, Conduit.QAD.Types.Date

    field :vee_user1, :string

    field :vee_user2, :string

    field :vee_user3, :string

    field :vee_user4, :string

    field :vee__qadc01, :string

    field :vee__qadc02, :string

    field :vee__qadc03, :string

    field :vee__qadc04, :string

    field :vee__qadd01, :decimal

    field :vee__qadd02, :decimal

    field :vee__qadl01, Conduit.QAD.Types.Bool

    field :vee__qadl02, Conduit.QAD.Types.Bool

    field :vee__qadt01, Conduit.QAD.Types.Date

    field :vee__qadt02, Conduit.QAD.Types.Date

    field :vee__qadi01, :integer

    field :vee__qadi02, :integer

    field :vee_domain, :string

    field :oid_vee_mstr, :decimal, primary_key: true

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
