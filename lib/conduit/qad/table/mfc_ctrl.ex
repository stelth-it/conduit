defmodule Elixir.Conduit.QAD.Table.Mfc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_mfc_ctrl" do
    field :mfc_module, :string

    field :mfc_seq, :integer

    field :mfc_field, :string

    field :mfc_label, :string

    field :mfc_desc, :string

    field :mfc_type, :string

    field :mfc_integer, :integer

    field :mfc_char, :string

    field :mfc_decimal, :decimal

    field :mfc_logical, Conduit.QAD.Types.Bool

    field :mfc_date, Conduit.QAD.Types.Date

    field :mfc_user1, :string

    field :mfc_user2, :string

    field :mfc__qadc01, :string

    field :mfc_domain, :string

    field :oid_mfc_ctrl, :decimal, primary_key: true

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
