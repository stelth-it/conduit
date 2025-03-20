defmodule Elixir.Conduit.QAD.Table.Escx_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_escx_det" do
    field :oid_escx_det, :decimal, primary_key: true

    field :escx_xml_stamp, :string

    field :escx_record_order, :integer

    field :oid_escd_det, :decimal, primary_key: true

    field :escx_mod_date, Conduit.QAD.Types.Date

    field :escx_mod_userid, :string

    field :escx_user1, :string

    field :escx_user2, :string

    field :escx__qadc01, :string

    field :escx__qadc02, :string

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
