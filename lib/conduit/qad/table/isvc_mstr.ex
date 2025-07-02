defmodule Elixir.Conduit.QAD.Table.Isvc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_isvc_mstr" do
    field :isvc_ctry_dest, :string

    field :isvc_ctry_orig, :string

    field :isvc_terms_delivery, :string

    field :isvc_min_value, :decimal

    field :isvc_percentage, :decimal

    field :isvc_per_unit, :decimal

    field :isvc_per_weight, :decimal

    field :isvc_shipvia, :string

    field :isvc_mode_transp, :string

    field :isvc_flow, :string

    field :isvc_mod_date, Conduit.QAD.Types.Date

    field :isvc_mod_userid, :string

    field :isvc_user1, :string

    field :isvc_user2, :string

    field :isvc__qadc01, :string

    field :isvc__qadc02, :string

    field :isvc_um, :string

    field :isvc_domain, :string

    field :oid_isvc_mstr, :decimal, primary_key: true

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
