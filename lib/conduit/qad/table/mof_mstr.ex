defmodule Elixir.Conduit.QAD.Table.Mof_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mof_mstr" do
    field :mof_key, :string

    field :mof_from_login, :integer

    field :mof_to_login, :integer

    field :mof_from_idle_menu, :integer

    field :mof_from_idle_prog, :integer

    field :mof_filter, Conduit.QAD.Types.Bool

    field :mof_from_userid, :string

    field :mof_to_userid, :string

    field :mof_from_sel, :string

    field :mof_to_sel, :string

    field :mof_bind, Conduit.QAD.Types.Bool

    field :mof_desc, :string

    field :mof_sessions, :integer

    field :mof_user1, :string

    field :mof_user2, :string

    field :mof__qadc01, :string

    field :mof__qadd01, :decimal

    field :mof__qadi01, :integer

    field :mof__qadl01, Conduit.QAD.Types.Bool

    field :mof__qadt01, Conduit.QAD.Types.Date

    field :oid_mof_mstr, :decimal, primary_key: true

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
