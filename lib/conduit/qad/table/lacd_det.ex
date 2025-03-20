defmodule Elixir.Conduit.QAD.Table.Lacd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lacd_det" do
    field :lacd_internal_ref_type, :string

    field :lacd_internal_ref, :string

    field :lacd_shipfrom, :string

    field :lacd_lc_charge, :string

    field :lacd_log_supplier, :string

    field :lacd_element, :string

    field :lacd_accrual_level, :string

    field :lacd_mod_userid, :string

    field :lacd_mod_date, Conduit.QAD.Types.Date

    field :lacd_user1, :string

    field :lacd_user2, :string

    field :lacd__qadc01, :string

    field :lacd__qadc02, :string

    field :lacd_domain, :string

    field :oid_lacd_det, :decimal, primary_key: true

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
