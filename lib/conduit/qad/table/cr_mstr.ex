defmodule Elixir.Conduit.QAD.Table.Cr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cr_mstr" do
    field :cr_code, :string

    field :cr_type, :string

    field :cr_code_beg, :string

    field :cr_code_end, :string

    field :cr_mod_date, Conduit.QAD.Types.Date

    field :cr_mod_userid, :string

    field :cr_user1, :string

    field :cr_user2, :string

    field :cr__qadc01, :string

    field :cr__qadt01, Conduit.QAD.Types.Date

    field :cr_domain, :string

    field :oid_cr_mstr, :decimal, primary_key: true

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
