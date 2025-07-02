defmodule Elixir.Conduit.QAD.Table.Fal_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fal_mstr" do
    field :fal_loc, :string

    field :fal_desc, :string

    field :fal_bldg, :string

    field :fal_dept, :string

    field :fal_cc, :string

    field :fal_ac_cc, :string

    field :fal_exp_cc, :string

    field :fal_sub, :string

    field :fal_ac_sub, :string

    field :fal_exp_sub, :string

    field :fal_userid, :string

    field :fal_mod_date, Conduit.QAD.Types.Date

    field :fal_fa_loc, :string

    field :fal__qad01, Conduit.QAD.Types.Bool

    field :fal__qad02, :string

    field :fal__qad03, :string

    field :fal_user1, :string

    field :fal_user2, :string

    field :oid_fal_mstr, :decimal, primary_key: true

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
