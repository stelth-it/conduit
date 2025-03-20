defmodule Elixir.Conduit.QAD.Table.Um_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_um_mstr" do
    field :um_um, :string

    field :um_alt_um, :string

    field :um_conv, :decimal

    field :um_part, :string

    field :um_desc, :string

    field :um_alt_qty, :decimal

    field :um_decimals, :integer

    field :um_user1, :string

    field :um_user2, :string

    field :um__chr01, :string

    field :um__chr02, :string

    field :um__chr03, :string

    field :um__chr04, :string

    field :um__chr05, :string

    field :um__chr06, :string

    field :um__dec01, :decimal

    field :um__dec02, :decimal

    field :um__dte01, Conduit.QAD.Types.Date

    field :um__dte02, Conduit.QAD.Types.Date

    field :um__log01, Conduit.QAD.Types.Bool

    field :um__log02, Conduit.QAD.Types.Bool

    field :um_domain, :string

    field :oid_um_mstr, :decimal, primary_key: true

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
