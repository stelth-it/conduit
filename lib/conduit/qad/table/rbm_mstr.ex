defmodule Elixir.Conduit.QAD.Table.Rbm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rbm_mstr" do
    field :rbm_ar_nbr, :string

    field :rbm_status, :string

    field :rbm_rsn, :string

    field :rbm_newprice, :decimal

    field :rbm_eff, Conduit.QAD.Types.Date

    field :rbm_auth, :string

    field :rbm_cust, :string

    field :rbm_cmtindx, :integer

    field :rbm_user1, :string

    field :rbm_user2, :string

    field :rbm__qadc01, :string

    field :rbm_domain, :string

    field :oid_rbm_mstr, :decimal, primary_key: true

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
