defmodule Elixir.Conduit.QAD.Table.Spd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_spd_det" do
    field :spd_addr, :string

    field :spd_prod_ln, :string

    field :spd_part, :string

    field :spd_cust, :string

    field :spd_comm_pct, :decimal

    field :spd_user1, :string

    field :spd_user2, :string

    field :spd__chr01, :string

    field :spd__chr02, :string

    field :spd__chr03, :string

    field :spd__chr04, :string

    field :spd__chr05, :string

    field :spd__dte01, Conduit.QAD.Types.Date

    field :spd__dte02, Conduit.QAD.Types.Date

    field :spd__dec01, :decimal

    field :spd__dec02, :decimal

    field :spd_mod_date, Conduit.QAD.Types.Date

    field :spd_userid, :string

    field :spd_domain, :string

    field :oid_spd_det, :decimal, primary_key: true

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
