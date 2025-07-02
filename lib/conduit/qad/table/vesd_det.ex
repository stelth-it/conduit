defmodule Elixir.Conduit.QAD.Table.Vesd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vesd_det" do
    field :vesd_vendor, :string

    field :vesd_vendor_source, :string

    field :vesd_category, :string

    field :vesd_ves_from_date, Conduit.QAD.Types.Date

    field :vesd_ves_to_date, Conduit.QAD.Types.Date

    field :vesd_rec_type, :string

    field :vesd_part, :string

    field :vesd_type, :string

    field :vesd_sub_type, :string

    field :vesd_tran_id, :integer

    field :vesd_event, :string

    field :vesd_weight_code, :string

    field :vesd_event_qty, :decimal

    field :vesd_tran_date, Conduit.QAD.Types.Date

    field :vesd_mod_userid, :string

    field :vesd_mod_date, Conduit.QAD.Types.Date

    field :vesd_user1, :string

    field :vesd_user2, :string

    field :vesd_user3, :string

    field :vesd_user4, :string

    field :vesd__qadc01, :string

    field :vesd__qadc02, :string

    field :vesd__qadc03, :string

    field :vesd__qadc04, :string

    field :vesd__qadd01, :decimal

    field :vesd__qadd02, :decimal

    field :vesd__qadl01, Conduit.QAD.Types.Bool

    field :vesd__qadl02, Conduit.QAD.Types.Bool

    field :vesd__qadt01, Conduit.QAD.Types.Date

    field :vesd__qadt02, Conduit.QAD.Types.Date

    field :vesd__qadi01, :integer

    field :vesd__qadi02, :integer

    field :vesd_site, :string

    field :vesd_domain, :string

    field :oid_vesd_det, :decimal, primary_key: true

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
