defmodule Elixir.Conduit.QAD.Table.Ls_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ls_mstr" do
    field :ls_type, :string

    field :ls_addr, :string

    field :ls_user1, :string

    field :ls_user2, :string

    field :ls__qadc01, :string

    field :ls_app_owner, :string

    field :ls__dec01, :decimal

    field :ls__dec02, :decimal

    field :ls__int01, :integer

    field :ls__int02, :integer

    field :ls__log01, Conduit.QAD.Types.Bool

    field :ls__log02, Conduit.QAD.Types.Bool

    field :ls__dte01, Conduit.QAD.Types.Date

    field :ls__dte02, Conduit.QAD.Types.Date

    field :ls__qadc02, :string

    field :ls__qadc03, :string

    field :ls__qadc04, :string

    field :ls__qadd01, :decimal

    field :ls__qadd02, :decimal

    field :ls__qadi01, :integer

    field :ls__qadi02, :integer

    field :ls__qadl01, Conduit.QAD.Types.Bool

    field :ls__qadl02, Conduit.QAD.Types.Bool

    field :ls__qadt01, Conduit.QAD.Types.Date

    field :ls__qadt02, Conduit.QAD.Types.Date

    field :ls_domain, :string

    field :oid_ls_mstr, :decimal, primary_key: true

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
