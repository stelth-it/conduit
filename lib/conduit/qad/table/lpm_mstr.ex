defmodule Elixir.Conduit.QAD.Table.Lpm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lpm_mstr" do
    field :lpm_product, :string

    field :lpm_desc, :string

    field :lpm_lic_req, Conduit.QAD.Types.Bool

    field :lpm_mod_userid, :string

    field :lpm_mod_date, Conduit.QAD.Types.Date

    field :lpm__qadc01, :string

    field :lpm__qadc02, :string

    field :lpm__qadd01, :decimal

    field :lpm__qadt01, Conduit.QAD.Types.Date

    field :lpm_ver_list, :string

    field :oid_lpm_mstr, :decimal, primary_key: true

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
