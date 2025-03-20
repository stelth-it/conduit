defmodule Elixir.Conduit.QAD.Table.Ssd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ssd_det" do
    field :ssd_network, :string

    field :ssd_rec_site, :string

    field :ssd_src_site, :string

    field :ssd_ref, :string

    field :ssd_percent, :decimal

    field :ssd_start, Conduit.QAD.Types.Date

    field :ssd_end, Conduit.QAD.Types.Date

    field :ssd_trans, :string

    field :ssd_leadtime, :integer

    field :ssd_user1, :string

    field :ssd_user2, :string

    field :ssd__qadd01, :decimal

    field :ssd__qadc01, :string

    field :ssd_domain, :string

    field :oid_ssd_det, :decimal, primary_key: true

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
