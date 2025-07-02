defmodule Elixir.Conduit.QAD.Table.Csil_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_csil_mstr" do
    field :csil_ctry_code, :string

    field :csil_auth, :string

    field :csil_licen, :string

    field :csil_start, Conduit.QAD.Types.Date

    field :csil_end, Conduit.QAD.Types.Date

    field :csil_addr1, :string

    field :csil_addr2, :string

    field :csil_addr3, :string

    field :csil_cmtindx, :integer

    field :csil_addr4, :string

    field :csil_user1, :string

    field :csil_user2, :string

    field :csil__qadc01, :string

    field :csil_domain, :string

    field :oid_csil_mstr, :decimal, primary_key: true

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
