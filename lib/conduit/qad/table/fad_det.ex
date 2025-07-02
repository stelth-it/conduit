defmodule Elixir.Conduit.QAD.Table.Fad_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fad_det" do
    field :fad_fa_id, :string

    field :fad_desc, :string

    field :fad_tag, :string

    field :fad_serial, :string

    field :fad_puramt, :decimal

    field :fad_mod_userid, :string

    field :fad_mod_date, Conduit.QAD.Types.Date

    field :fad_user1, :string

    field :fad_user2, :string

    field :fad__chr01, :string

    field :fad__dec01, :decimal

    field :fad__log01, Conduit.QAD.Types.Bool

    field :fad__int01, :integer

    field :fad__dte01, Conduit.QAD.Types.Date

    field :fad__qadc01, :string

    field :fad__qadd01, :decimal

    field :fad__qadl01, Conduit.QAD.Types.Bool

    field :fad__qadi01, :integer

    field :fad__qadt01, Conduit.QAD.Types.Date

    field :fad_domain, :string

    field :oid_fad_det, :decimal, primary_key: true

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
