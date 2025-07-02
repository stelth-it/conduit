defmodule Elixir.Conduit.QAD.Table.Esrec_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esrec_det" do
    field :oid_esrec_det, :decimal, primary_key: true

    field :oid_erecord, :decimal, primary_key: true

    field :oid_esig_mstr, :decimal, primary_key: true

    field :oid_escd_det, :decimal, primary_key: true

    field :esrec_table_name, :string

    field :esrec_record_order, :integer

    field :esrec_mod_date, Conduit.QAD.Types.Date

    field :esrec_mod_userid, :string

    field :esrec_user1, :string

    field :esrec_user2, :string

    field :esrec__qadc01, :string

    field :esrec__qadc02, :string

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
