defmodule Elixir.Conduit.QAD.Table.Kbtrr_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_kbtrr_det" do
    field :oid_kbtrr_det, :decimal, primary_key: true

    field :oid_kbtr_hist, :decimal, primary_key: true

    field :kbtrr_domain, :string

    field :kbtrr_rjct_rsn_code, :string

    field :kbtrr_rjct_qty, :decimal

    field :kbtrr_mod_userid, :string

    field :kbtrr_mod_date, Conduit.QAD.Types.Date

    field :kbtrr_user1, :string

    field :kbtrr_user2, :string

    field :kbtrr__qadc01, :string

    field :kbtrr__qadc02, :string

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
