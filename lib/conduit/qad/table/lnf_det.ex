defmodule Elixir.Conduit.QAD.Table.Lnf_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lnf_det" do
    field :lnf_site, :string

    field :lnf_production_line, :string

    field :lnf_part, :string

    field :lnf_preference, :integer

    field :lnf_mod_userid, :string

    field :lnf_mod_date, Conduit.QAD.Types.Date

    field :lnf_user1, :string

    field :lnf_user2, :string

    field :lnf_userc03, :string

    field :lnf_userd01, :decimal

    field :lnf_useri01, :integer

    field :lnf_userl01, Conduit.QAD.Types.Bool

    field :lnf_usert01, Conduit.QAD.Types.Date

    field :lnf__qadc01, :string

    field :lnf__qadc02, :string

    field :lnf__qadc03, :string

    field :lnf__qadd01, :decimal

    field :lnf__qadi01, :integer

    field :lnf__qadl01, Conduit.QAD.Types.Bool

    field :lnf__qadt01, Conduit.QAD.Types.Date

    field :lnf_domain, :string

    field :oid_lnf_det, :decimal, primary_key: true

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
