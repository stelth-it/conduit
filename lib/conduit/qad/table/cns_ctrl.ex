defmodule Elixir.Conduit.QAD.Table.Cns_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cns_ctrl" do
    field :cns__qadi01, :integer

    field :cns_active, Conduit.QAD.Types.Bool

    field :cns_consign_flag, Conduit.QAD.Types.Bool

    field :cns_max_aging_days, :integer

    field :cns_picking_logic, :string

    field :cns_transfer_ownership, :string

    field :cns_mod_userid, :string

    field :cns_mod_date, Conduit.QAD.Types.Date

    field :cns_user1, :string

    field :cns_user2, :string

    field :cns__qadc01, :string

    field :cns__qadc02, :string

    field :cns_domain, :string

    field :oid_cns_ctrl, :decimal, primary_key: true

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
