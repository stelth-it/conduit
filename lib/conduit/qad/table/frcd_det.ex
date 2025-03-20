defmodule Elixir.Conduit.QAD.Table.Frcd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_frcd_det" do
    field :frcd_fr_list, :string

    field :frcd_site, :string

    field :frcd_zone, :string

    field :frcd_class, :string

    field :frcd_min_wt, :decimal

    field :frcd_max_wt, :decimal

    field :frcd_min_wtc, :decimal

    field :frcd_tot_wtc, :decimal

    field :frcd_xtr_wtc, :decimal

    field :frcd_start, Conduit.QAD.Types.Date

    field :frcd_end, Conduit.QAD.Types.Date

    field :frcd_user1, :string

    field :frcd_user2, :string

    field :frcd__chr01, :string

    field :frcd__chr02, :string

    field :frcd__chr03, :string

    field :frcd__chr04, :string

    field :frcd__chr05, :string

    field :frcd__chr06, :string

    field :frcd__chr07, :string

    field :frcd__chr08, :string

    field :frcd__dec01, :decimal

    field :frcd__dec02, :decimal

    field :frcd__dte01, Conduit.QAD.Types.Date

    field :frcd__dte02, Conduit.QAD.Types.Date

    field :frcd__log01, Conduit.QAD.Types.Bool

    field :frcd__log02, Conduit.QAD.Types.Bool

    field :frcd_curr, :string

    field :frcd_domain, :string

    field :oid_frcd_det, :decimal, primary_key: true

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
