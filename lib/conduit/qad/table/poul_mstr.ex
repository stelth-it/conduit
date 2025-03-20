defmodule Elixir.Conduit.QAD.Table.Poul_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_poul_mstr" do
    field :poul_pou_code, :string

    field :poul_site, :string

    field :poul_wkctr, :string

    field :poul_mch, :string

    field :poul_ref_key, :integer

    field :poul_cmtindx, :integer

    field :poul_mod_userid, :string

    field :poul_mod_date, Conduit.QAD.Types.Date

    field :poul_user1, :string

    field :poul_user2, :string

    field :poul__qadc01, :string

    field :poul__qadc02, :string

    field :poul_domain, :string

    field :oid_poul_mstr, :decimal, primary_key: true

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
