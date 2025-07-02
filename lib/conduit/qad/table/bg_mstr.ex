defmodule Elixir.Conduit.QAD.Table.Bg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bg_mstr" do
    field :bg_entity, :string

    field :bg_acc, :string

    field :bg_cc, :string

    field :bg_project, :string

    field :bg_fpos, :integer

    field :bg_budg_acc, :string

    field :bg_budg_cc, :string

    field :bg_budg_fpos, :integer

    field :bg_code, :string

    field :bg_user1, :string

    field :bg_user2, :string

    field :bg_sub, :string

    field :bg_budg_sub, :string

    field :bg__qadc01, :string

    field :bg_domain, :string

    field :oid_bg_mstr, :decimal, primary_key: true

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
