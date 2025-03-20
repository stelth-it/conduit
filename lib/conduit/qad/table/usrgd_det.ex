defmodule Elixir.Conduit.QAD.Table.Usrgd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_usrgd_det" do
    field :usrgd_userid, :string

    field :usrgd_mod_userid, :string

    field :usrgd_mod_date, Conduit.QAD.Types.Date

    field :usrgd_user1, :string

    field :usrgd_user2, :string

    field :usrgd__qadc01, :string

    field :usrgd__qadc02, :string

    field :oid_usrgd_det, :decimal, primary_key: true

    field :oid_usrg_mstr, :decimal, primary_key: true

    field :usrgd_domain, :string

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
