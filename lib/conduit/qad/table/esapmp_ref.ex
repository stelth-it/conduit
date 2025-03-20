defmodule Elixir.Conduit.QAD.Table.Esapmp_ref do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_esapmp_ref" do
    field :oid_esapmp_ref, :decimal, primary_key: true

    field :oid_esap_mstr, :decimal, primary_key: true

    field :esapmp_exec, :string

    field :esapmp_esig_active, Conduit.QAD.Types.Bool

    field :esapmp_mod_date, Conduit.QAD.Types.Date

    field :esapmp_mod_userid, :string

    field :esapmp_user1, :string

    field :esapmp_user2, :string

    field :esapmp__qadc01, :string

    field :esapmp__qadc02, :string

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
