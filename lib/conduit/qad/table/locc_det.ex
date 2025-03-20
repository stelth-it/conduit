defmodule Elixir.Conduit.QAD.Table.Locc_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_locc_det" do
    field :locc_site, :string

    field :locc_loc, :string

    field :locc_addr, :string

    field :locc_primary_loc, Conduit.QAD.Types.Bool

    field :locc_mod_date, Conduit.QAD.Types.Date

    field :locc_mod_userid, :string

    field :locc_userc01, :string

    field :locc_userc02, :string

    field :locc_userd01, :decimal

    field :locc_usert01, Conduit.QAD.Types.Date

    field :locc_useri01, :integer

    field :locc_userl01, Conduit.QAD.Types.Bool

    field :locc__qadc01, :string

    field :locc__qadd01, :decimal

    field :locc__qadi01, :integer

    field :locc__qadl01, Conduit.QAD.Types.Bool

    field :locc__qadt01, Conduit.QAD.Types.Date

    field :locc_domain, :string

    field :oid_locc_det, :decimal, primary_key: true

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
