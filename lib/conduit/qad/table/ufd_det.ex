defmodule Elixir.Conduit.QAD.Table.Ufd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ufd_det" do
    field :ufd_userid, :string

    field :ufd_fkey, :integer

    field :ufd_seq, :integer

    field :ufd_exec, :string

    field :ufd_nbr, :string

    field :ufd_select, :integer

    field :ufd_user1, :string

    field :ufd_user2, :string

    field :ufd_nbrsel, :string

    field :ufd_label, :string

    field :ufd__qadc01, :string

    field :oid_ufd_det, :decimal, primary_key: true

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
