defmodule Elixir.Conduit.QAD.Table.Ess_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ess_mstr" do
    field :ess_status, :string

    field :ess_available, Conduit.QAD.Types.Bool

    field :ess_desc, :string

    field :ess_user1, :string

    field :ess_user2, :string

    field :ess_mod_date, Conduit.QAD.Types.Date

    field :ess_mod_userid, :string

    field :ess__chr01, :string

    field :ess__log01, Conduit.QAD.Types.Bool

    field :ess__qadc01, :string

    field :ess__qadl01, Conduit.QAD.Types.Bool

    field :ess_domain, :string

    field :oid_ess_mstr, :decimal, primary_key: true

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
