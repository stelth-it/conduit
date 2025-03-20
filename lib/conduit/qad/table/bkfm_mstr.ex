defmodule Elixir.Conduit.QAD.Table.Bkfm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_bkfm_mstr" do
    field :bkfm_validation, :string

    field :bkfm_sequence, :integer

    field :bkfm_length, :integer

    field :bkfm_mandatory, Conduit.QAD.Types.Bool

    field :bkfm_lead_zeros, Conduit.QAD.Types.Bool

    field :bkfm__qadc01, :string

    field :bkfm__qadc02, :string

    field :bkfm_user1, :string

    field :bkfm_user2, :string

    field :bkfm_mod_date, Conduit.QAD.Types.Date

    field :bkfm_mod_userid, :string

    field :oid_bkfm_mstr, :decimal, primary_key: true

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
