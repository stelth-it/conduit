defmodule Elixir.Conduit.QAD.Table.Sosr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sosr_mstr" do
    field :sosr_nbr, :string

    field :sosr_line, :integer

    field :sosr_abs_id, :string

    field :sosr_cmtindx, :integer

    field :sosr_shipfrom, :string

    field :sosr__qadc01, :string

    field :sosr__qadc02, :string

    field :sosr_mod_userid, :string

    field :sosr_mod_date, Conduit.QAD.Types.Date

    field :sosr_user1, :string

    field :sosr_user2, :string

    field :sosr_domain, :string

    field :oid_sosr_mstr, :decimal, primary_key: true

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
