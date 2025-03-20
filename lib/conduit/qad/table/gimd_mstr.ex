defmodule Elixir.Conduit.QAD.Table.Gimd_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gimd_mstr" do
    field :gimd_app_code, :string

    field :gimd_model_name, :string

    field :gimd_ref_key, :integer

    field :gimd_mod_date, Conduit.QAD.Types.Date

    field :gimd_mod_userid, :string

    field :gimd_model_desc, :string

    field :gimd_user1, :string

    field :gimd_user2, :string

    field :gimd__qadc01, :string

    field :gimd__qadc02, :string

    field :gimd_domain, :string

    field :oid_gimd_mstr, :decimal, primary_key: true

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
