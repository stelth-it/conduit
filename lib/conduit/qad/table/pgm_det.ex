defmodule Elixir.Conduit.QAD.Table.Pgm_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_pgm_det" do
    field :pgm_ref, :string

    field :pgm_eq, :string

    field :pgm_type, :string

    field :pgm_seq, :integer

    field :pgm_cmmt, {:array, :string}

    field :pgm_mod_date, Conduit.QAD.Types.Date

    field :pgm_userid, :string

    field :pgm_user1, :string

    field :pgm_user2, :string

    field :pgm_desc, :string

    field :pgm__qadc01, :string

    field :pgm_domain, :string

    field :oid_pgm_det, :decimal, primary_key: true

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
