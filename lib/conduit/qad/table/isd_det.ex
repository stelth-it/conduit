defmodule Elixir.Conduit.QAD.Table.Isd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_isd_det" do
    field :isd_status, :string

    field :isd_tr_type, :string

    field :isd_user1, :string

    field :isd_user2, :string

    field :isd_type, :string

    field :isd_bdl_allowed, Conduit.QAD.Types.Bool

    field :isd__qadc01, :string

    field :isd_domain, :string

    field :oid_isd_det, :decimal, primary_key: true

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
