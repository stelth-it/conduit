defmodule Elixir.Conduit.QAD.Table.Pould_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pould_det" do
    field :pould_poul_ref_key, :integer

    field :pould_loc, :string

    field :pould_preference, :integer

    field :pould_mod_userid, :string

    field :pould_mod_date, Conduit.QAD.Types.Date

    field :pould_user1, :string

    field :pould_user2, :string

    field :pould__qadc01, :string

    field :pould__qadc02, :string

    field :pould_domain, :string

    field :oid_pould_det, :decimal, primary_key: true

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
