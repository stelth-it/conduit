defmodule Elixir.Conduit.QAD.Table.Mfrel_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_mfrel_mstr" do
    field :mfrel_type, :string

    field :mfrel_source_key1, :string

    field :mfrel_source_key2, :string

    field :mfrel_source_key3, :string

    field :mfrel_target_key1, :string

    field :mfrel_target_key2, :string

    field :mfrel_target_key3, :string

    field :mfrel__qadc01, :string

    field :mfrel__qadc02, :string

    field :mfrel__qadc03, :string

    field :mfrel__qadc04, :string

    field :mfrel__qadc05, :string

    field :mfrel__qadd01, :decimal

    field :mfrel__qadd02, :decimal

    field :mfrel__qadd03, :decimal

    field :mfrel__qadd04, :decimal

    field :mfrel__qadd05, :decimal

    field :mfrel__qadl01, Conduit.QAD.Types.Bool

    field :mfrel__qadl02, Conduit.QAD.Types.Bool

    field :mfrel__qaddt01, Conduit.QAD.Types.Date

    field :mfrel__qaddt02, Conduit.QAD.Types.Date

    field :mfrel_mod_userid, :string

    field :mfrel_mod_date, Conduit.QAD.Types.Date

    field :mfrel_user1, :string

    field :mfrel_user2, :string

    field :oid_mfrel_mstr, :decimal, primary_key: true

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
