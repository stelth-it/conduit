defmodule Elixir.Conduit.QAD.Table.Acdf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_acdf_mstr" do
    field :acdf_type, :string

    field :acdf_key1, :string

    field :acdf_key2, :string

    field :acdf_key3, :string

    field :acdf_key4, :string

    field :acdf_key5, :string

    field :acdf_key6, :string

    field :acdf_acct, :string

    field :acdf_sub, :string

    field :acdf_cc, :string

    field :acdf_module, :string

    field :acdf_mod_userid, :string

    field :acdf_mod_date, Conduit.QAD.Types.Date

    field :acdf_userc01, :string

    field :acdf_userc02, :string

    field :acdf_userd01, :decimal

    field :acdf_useri01, :integer

    field :acdf_userl01, Conduit.QAD.Types.Bool

    field :acdf_usert01, Conduit.QAD.Types.Date

    field :acdf__qadc01, :string

    field :acdf__qadd01, :decimal

    field :acdf__qadi01, :integer

    field :acdf__qadl01, Conduit.QAD.Types.Bool

    field :acdf__qadt01, Conduit.QAD.Types.Date

    field :acdf_domain, :string

    field :oid_acdf_mstr, :decimal, primary_key: true

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
