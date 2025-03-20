defmodule Elixir.Conduit.QAD.Table.Ptc_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ptc_det" do
    field :ptc_part, :string

    field :ptc_charge, Conduit.QAD.Types.Bool

    field :ptc_charge_type, :string

    field :ptc_container_desc, :string

    field :ptc_container_type, :string

    field :ptc_container_ref, :string

    field :ptc_mod_userid, :string

    field :ptc_mod_date, Conduit.QAD.Types.Date

    field :ptc_userc01, :string

    field :ptc_userc02, :string

    field :ptc__qadc01, :string

    field :ptc__qadc02, :string

    field :ptc_domain, :string

    field :oid_ptc_det, :decimal, primary_key: true

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
