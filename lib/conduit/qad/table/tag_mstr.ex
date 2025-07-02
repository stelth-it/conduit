defmodule Elixir.Conduit.QAD.Table.Tag_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_tag_mstr" do
    field :tag_nbr, :integer

    field :tag_part, :string

    field :tag_loc, :string

    field :tag_serial, :string

    field :tag_cnt_qty, :decimal

    field :tag_cnt_nam, :string

    field :tag_cnt_dt, Conduit.QAD.Types.Date

    field :tag_rcnt_qty, :decimal

    field :tag_rcnt_nam, :string

    field :tag_rcnt_dt, Conduit.QAD.Types.Date

    field :tag_site, :string

    field :tag_type, :string

    field :tag_void, Conduit.QAD.Types.Bool, primary_key: true

    field :tag_prt_dt, Conduit.QAD.Types.Date

    field :tag_crt_dt, Conduit.QAD.Types.Date

    field :tag_posted, Conduit.QAD.Types.Bool

    field :tag_cnt_um, :string

    field :tag_rcnt_um, :string

    field :tag_rcnt_cnv, :decimal

    field :tag_cnt_cnv, :decimal

    field :tag_rmks, :string

    field :tag__qad01, :decimal

    field :tag_user1, :string

    field :tag_user2, :string

    field :tag_ref, :string

    field :tag_domain, :string

    field :oid_tag_mstr, :decimal, primary_key: true

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
