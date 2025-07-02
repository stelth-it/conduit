defmodule Elixir.Conduit.QAD.Table.Cil_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cil_mstr" do
    field :cil_cor_inv, :string

    field :cil_cor_so_nbr, :string

    field :cil_cor_rsn, :string

    field :cil_mod_userid, :string

    field :cil_mod_date, Conduit.QAD.Types.Date

    field :cil_mstr_inv, :string

    field :cil_prev_so_nbr, :string

    field :cil_prev_inv, :string

    field :cil_user1, :string

    field :cil_user2, :string

    field :cil__qadc01, :string

    field :cil__qadc02, :string

    field :cil_domain, :string

    field :oid_cil_mstr, :decimal, primary_key: true

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
