defmodule Elixir.Conduit.QAD.Table.Lblc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lblc_ctrl" do
    field :lblc_index1, :integer

    field :lblc_trans_frame, Conduit.QAD.Types.Bool

    field :lblc_mod_userid, :string

    field :lblc_mod_date, Conduit.QAD.Types.Date

    field :lblc_user1, :string

    field :lblc_user2, :string

    field :lblc__qadc01, :string

    field :lblc__qadc02, :string

    field :lblc__qadl01, Conduit.QAD.Types.Bool

    field :lblc__qadl02, Conduit.QAD.Types.Bool

    field :oid_lblc_ctrl, :decimal, primary_key: true

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
