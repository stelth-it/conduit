defmodule Elixir.Conduit.QAD.Table.Giap_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_giap_mstr" do
    field :giap_app_code, :string

    field :giap_app_desc, :string

    field :giap_ref_key, :integer

    field :giap_mod_date, Conduit.QAD.Types.Date

    field :giap_mod_userid, :string

    field :giap_user1, :string

    field :giap_user2, :string

    field :giap__qadc01, :string

    field :giap__qadc02, :string

    field :giap_domain, :string

    field :oid_giap_mstr, :decimal, primary_key: true

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
