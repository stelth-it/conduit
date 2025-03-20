defmodule Elixir.Conduit.QAD.Table.Ft_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ft_mstr" do
    field :ft_terms, :string

    field :ft_type, :string

    field :ft_desc, :string

    field :ft_user1, :string

    field :ft_user2, :string

    field :ft__chr01, :string

    field :ft__chr02, :string

    field :ft__chr03, :string

    field :ft__chr04, :string

    field :ft__chr05, :string

    field :ft__chr06, :string

    field :ft__chr07, :string

    field :ft__chr08, :string

    field :ft__dec01, :decimal

    field :ft__dec02, :decimal

    field :ft__dte01, Conduit.QAD.Types.Date

    field :ft__dte02, Conduit.QAD.Types.Date

    field :ft__log01, Conduit.QAD.Types.Bool

    field :ft__log02, Conduit.QAD.Types.Bool

    field :ft_accrual_level, :string

    field :ft_lc_charge, :string

    field :ft_domain, :string

    field :oid_ft_mstr, :decimal, primary_key: true

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
