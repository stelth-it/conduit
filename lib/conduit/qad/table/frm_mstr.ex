defmodule Elixir.Conduit.QAD.Table.Frm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_frm_mstr" do
    field :frm_code, :string

    field :frm_desc, :string

    field :frm_curr, :string

    field :frm_um, :string

    field :frm_rate_qty, :decimal

    field :frm_user1, :string

    field :frm_user2, :string

    field :frm__qadc01, :string

    field :frm_domain, :string

    field :oid_frm_mstr, :decimal, primary_key: true

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
