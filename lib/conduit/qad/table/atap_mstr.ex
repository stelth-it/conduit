defmodule Elixir.Conduit.QAD.Table.Atap_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atap_mstr" do
    field :oid_atap_mstr, :decimal, primary_key: true

    field :oid_att_mstr, :decimal, primary_key: true

    field :atap_begin_date, Conduit.QAD.Types.Date

    field :atap_audit_active, Conduit.QAD.Types.Bool

    field :atap_table_name, :string

    field :atap_filter_criteria, :string

    field :atap_all_fields, Conduit.QAD.Types.Bool

    field :atap_mod_date, Conduit.QAD.Types.Date

    field :atap_mod_userid, :string

    field :atap_user1, :string

    field :atap_user2, :string

    field :atap__qadc01, :string

    field :atap__qadc02, :string

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
