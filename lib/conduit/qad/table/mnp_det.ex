defmodule Elixir.Conduit.QAD.Table.Mnp_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mnp_det" do
    field :mnp_userid, :string

    field :mnp_sequence, :integer

    field :mnp_repeat_group, :string

    field :mnp_select, :integer

    field :mnp_menu, :string

    field :mnp_prog_type, :string

    field :mnp_exec, :string

    field :mnp_program, :string

    field :mnp_user1, :string

    field :mnp_user2, :string

    field :mnp__qadc01, :string

    field :mnp_domain, :string

    field :oid_mnp_det, :decimal, primary_key: true

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
