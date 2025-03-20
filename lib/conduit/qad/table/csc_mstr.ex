defmodule Elixir.Conduit.QAD.Table.Csc_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_csc_mstr" do
    field :csc_ctry_code, :string

    field :csc_auth, :string

    field :csc_addr, :string

    field :csc_ctrl, :string

    field :csc_start, Conduit.QAD.Types.Date

    field :csc_end, Conduit.QAD.Types.Date

    field :csc_cmtindx, :integer

    field :csc_user1, :string

    field :csc_user2, :string

    field :csc__qadc01, :string

    field :csc_domain, :string

    field :oid_csc_mstr, :decimal, primary_key: true

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
