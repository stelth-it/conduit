defmodule Elixir.Conduit.QAD.Table.Lvr_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_lvr_det" do
    field :lvr_userid, :string

    field :lvr_date, :string

    field :lvr_time, :string

    field :lvr_user1, :string

    field :lvr_user2, :string

    field :lvr__qadc01, :string

    field :lvr__qadi01, :integer

    field :lvr__qadd01, :decimal

    field :lvr__qadl01, Conduit.QAD.Types.Bool

    field :lvr__qadt01, Conduit.QAD.Types.Date

    field :lvr_nbr, :integer

    field :lvr_product, :string

    field :lvr_msg_sev, :integer

    field :lvr_msg_nbr, :integer

    field :lvr_dir_cnt, :integer

    field :lvr_ind_cnt, :integer

    field :lvr_sid, :string

    field :lvr_type, :string

    field :oid_lvr_det, :decimal, primary_key: true

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
