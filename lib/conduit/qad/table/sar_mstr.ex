defmodule Elixir.Conduit.QAD.Table.Sar_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sar_mstr" do
    field :sar_nbr, :string

    field :sar_serial, :string

    field :sar__qadc01, :string

    field :sar__chr01, :string

    field :sar__chr02, :string

    field :sar__chr03, :string

    field :sar__dec01, :decimal

    field :sar__dec02, :decimal

    field :sar__dte01, Conduit.QAD.Types.Date

    field :sar__dte02, Conduit.QAD.Types.Date

    field :sar__log01, Conduit.QAD.Types.Bool

    field :sar__log02, Conduit.QAD.Types.Bool

    field :sar_ref, :string

    field :sar_prefix, :string

    field :sar_part, :string

    field :sar_user1, :string

    field :sar_user2, :string

    field :sar_sad_line, :integer

    field :sar_domain, :string

    field :oid_sar_mstr, :decimal, primary_key: true

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
