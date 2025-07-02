defmodule Elixir.Conduit.QAD.Table.Ecd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecd_det" do
    field :ecd_nbr, :string

    field :ecd_part, :string

    field :ecd_old_rev, :string

    field :ecd_new_rev, :string

    field :ecd_start, Conduit.QAD.Types.Date

    field :ecd_end, Conduit.QAD.Types.Date

    field :ecd_user1, :string

    field :ecd_user2, :string

    field :ecd_cmtindx, :integer

    field :ecd_inv_dspn, :string

    field :ecd_new, Conduit.QAD.Types.Bool

    field :ecd_prodline, :string

    field :ecd_group, :string

    field :ecd_status, :string

    field :ecd_draw, :string

    field :ecd_part_type, :string

    field :ecd_dsgn_grp, :string

    field :ecd_drwg_loc, :string

    field :ecd_drwg_size, :string

    field :ecd_process, :string

    field :ecd__qad01, Conduit.QAD.Types.Bool

    field :ecd__qad02, Conduit.QAD.Types.Date

    field :ecd__qad03, :string

    field :ecd__qad04, :string

    field :ecd__qad05, :string

    field :ecd_mod_date, Conduit.QAD.Types.Date

    field :ecd_userid, :string

    field :ecd_domain, :string

    field :oid_ecd_det, :decimal, primary_key: true

    field :ecd_break_cat, :string

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
