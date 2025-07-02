defmodule Elixir.Conduit.QAD.Table.Ctry_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ctry_mstr" do
    field :ctry_ctry_code, :string

    field :ctry_country, :string

    field :ctry_ec_flag, Conduit.QAD.Types.Bool

    field :ctry_code1, :string

    field :ctry_user1, :string

    field :ctry_user2, :string

    field :ctry__chr01, :string

    field :ctry__log01, Conduit.QAD.Types.Bool

    field :ctry__qad01, :string

    field :ctry__qad02, :string

    field :ctry__qad03, :string

    field :ctry__qad04, Conduit.QAD.Types.Bool

    field :ctry__qad05, Conduit.QAD.Types.Bool

    field :ctry_group, :string

    field :ctry_cmtindx, :integer

    field :ctry_type, :string

    field :ctry_nafta_flag, Conduit.QAD.Types.Bool

    field :ctry_dea_flag, Conduit.QAD.Types.Bool

    field :ctry_gatt_flag, Conduit.QAD.Types.Bool

    field :ctry_vat_reg_prefix, :string

    field :ctry_ie_code, :string

    field :oid_ctry_mstr, :decimal, primary_key: true

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
