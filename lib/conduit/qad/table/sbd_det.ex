defmodule Elixir.Conduit.QAD.Table.Sbd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sbd_det" do
    field :sbd_sub, :string

    field :sbd_line, :integer

    field :sbd_acc_beg, :string

    field :sbd_acc_end, :string

    field :sbd_user1, :string

    field :sbd_user2, :string

    field :sbd__qadc01, :string

    field :oid_sbd_det, :decimal, primary_key: true

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
