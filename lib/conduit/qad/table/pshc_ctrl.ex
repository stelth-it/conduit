defmodule Elixir.Conduit.QAD.Table.Pshc_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pshc_ctrl" do
    field :pshc_shipper_nr_id, :string

    field :pshc_master_nr_id, :string

    field :pshc__qadi01, :integer

    field :pshc_mod_date, Conduit.QAD.Types.Date

    field :pshc_mod_userid, :string

    field :pshc_user1, :string

    field :pshc_user2, :string

    field :pshc__qadc01, :string

    field :pshc__qadc02, :string

    field :pshc_domain, :string

    field :oid_pshc_ctrl, :decimal, primary_key: true

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
