defmodule Elixir.Conduit.QAD.Table.Iss_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_iss_mstr" do
    field :iss_eu_nbr, :string

    field :iss_par, :string

    field :iss_comp, :string

    field :iss_par_ser, :string

    field :iss_comp_ser, :string

    field :iss_par_ref, :integer

    field :iss_comp_ref, :integer

    field :iss__chr01, :string

    field :iss__chr02, :string

    field :iss__chr03, :string

    field :iss__dec01, :decimal

    field :iss__dec02, :decimal

    field :iss__dte01, Conduit.QAD.Types.Date

    field :iss__dte02, Conduit.QAD.Types.Date

    field :iss__log01, Conduit.QAD.Types.Bool

    field :iss__log02, Conduit.QAD.Types.Bool

    field :iss_user1, :string

    field :iss_user2, :string

    field :iss_domain, :string

    field :oid_iss_mstr, :decimal, primary_key: true

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
