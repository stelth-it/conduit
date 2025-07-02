defmodule Elixir.Conduit.QAD.Table.Csim_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_csim_mstr" do
    field :csim_ctry_code, :string

    field :csim_auth, :string

    field :csim_ctrl, :string

    field :csim_desc, :string

    field :csim_um, :string

    field :csim_cmtindx, :integer

    field :csim_user1, :string

    field :csim_user2, :string

    field :csim__qadc01, :string

    field :csim_domain, :string

    field :oid_csim_mstr, :decimal, primary_key: true

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
