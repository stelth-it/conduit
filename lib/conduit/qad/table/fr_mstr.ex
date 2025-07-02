defmodule Elixir.Conduit.QAD.Table.Fr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fr_mstr" do
    field :fr_list, :string

    field :fr_desc, :string

    field :fr_site, :string

    field :fr_type, Conduit.QAD.Types.Bool

    field :fr_um, :string

    field :fr_trl_cd, :string

    field :fr_curr, :string

    field :fr_user1, :string

    field :fr_user2, :string

    field :fr__chr01, :string

    field :fr__chr02, :string

    field :fr__chr03, :string

    field :fr__chr04, :string

    field :fr__chr05, :string

    field :fr__chr06, :string

    field :fr__chr07, :string

    field :fr__chr08, :string

    field :fr__dec01, :decimal

    field :fr__dec02, :decimal

    field :fr__dte01, Conduit.QAD.Types.Date

    field :fr__dte02, Conduit.QAD.Types.Date

    field :fr__log01, Conduit.QAD.Types.Bool

    field :fr__log02, Conduit.QAD.Types.Bool

    field :fr_mode, :string

    field :fr_domain, :string

    field :oid_fr_mstr, :decimal, primary_key: true

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
