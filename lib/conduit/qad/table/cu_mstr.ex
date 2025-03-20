defmodule Elixir.Conduit.QAD.Table.Cu_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cu_mstr" do
    field :cu_curr, :string

    field :cu_desc, :string

    field :cu_rnd_mthd, :string

    field :cu_active, Conduit.QAD.Types.Bool

    field :cu__qadc02, :string

    field :cu__qadc04, :string

    field :cu__qadc05, :string

    field :cu__qadc07, :string

    field :cu__qadc08, :string

    field :cu__qadc10, :string

    field :cu__qadc11, :string

    field :cu__qadc13, :string

    field :cu__qadc14, :string

    field :cu__qadc16, :string

    field :cu_mod_userid, :string

    field :cu_mod_date, Conduit.QAD.Types.Date

    field :cu_user1, :string

    field :cu_user2, :string

    field :cu__qadt01, Conduit.QAD.Types.Date

    field :cu__qadt02, Conduit.QAD.Types.Date

    field :cu__qadd01, :decimal

    field :cu__qadc01, :string

    field :cu__qadl01, Conduit.QAD.Types.Bool

    field :cu__qadc15, :string

    field :cu__qadc09, :string

    field :cu__qadc12, :string

    field :cu__qadc03, :string

    field :cu__qadc06, :string

    field :cu_iso_curr, :string

    field :oid_cu_mstr, :decimal, primary_key: true

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
