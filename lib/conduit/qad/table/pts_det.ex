defmodule Elixir.Conduit.QAD.Table.Pts_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pts_det" do
    field :pts_part, :string

    field :pts_par, :string

    field :pts_sub_part, :string

    field :pts_qty_per, :decimal

    field :pts_rmks, :string

    field :pts_cmtindx, :integer

    field :pts_user1, :string

    field :pts_user2, :string

    field :pts_userid, :string

    field :pts_mod_date, Conduit.QAD.Types.Date

    field :pts__qadc01, :string

    field :pts_domain, :string

    field :oid_pts_det, :decimal, primary_key: true

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
