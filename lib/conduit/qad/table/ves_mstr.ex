defmodule Elixir.Conduit.QAD.Table.Ves_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ves_mstr" do
    field :ves_vendor, :string

    field :ves_vendor_source, :string

    field :ves_from_date, Conduit.QAD.Types.Date

    field :ves_to_date, Conduit.QAD.Types.Date

    field :ves_rec_type, :string

    field :ves_part, :string

    field :ves_comm_code, :string

    field :ves_site, :string

    field :ves_type, :string

    field :ves_rcvd_qty, :decimal

    field :ves_occurance_count, :integer

    field :ves_db, :string

    field :ves_sub_type, :string

    field :ves_mod_userid, :string

    field :ves_mod_date, Conduit.QAD.Types.Date

    field :ves_user1, :string

    field :ves_user2, :string

    field :ves_user3, :string

    field :ves_user4, :string

    field :ves__qadc01, :string

    field :ves__qadc02, :string

    field :ves__qadc03, :string

    field :ves__qadc04, :string

    field :ves__qadd01, :decimal

    field :ves__qadd02, :decimal

    field :ves__qadl01, Conduit.QAD.Types.Bool

    field :ves__qadl02, Conduit.QAD.Types.Bool

    field :ves__qadt01, Conduit.QAD.Types.Date

    field :ves__qadt02, Conduit.QAD.Types.Date

    field :ves__qadi01, :integer

    field :ves__qadi02, :integer

    field :ves_domain, :string

    field :oid_ves_mstr, :decimal, primary_key: true

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
