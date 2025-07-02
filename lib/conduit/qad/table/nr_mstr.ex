defmodule Elixir.Conduit.QAD.Table.Nr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_nr_mstr" do
    field :nr_seqid, :string

    field :nr_desc, :string

    field :nr_dataset, :string

    field :nr_allow_discard, Conduit.QAD.Types.Bool

    field :nr_allow_void, Conduit.QAD.Types.Bool, primary_key: true

    field :nr_next_set, Conduit.QAD.Types.Bool

    field :nr_seg_type, :string

    field :nr_seg_nbr, :string

    field :nr_segcount, :integer

    field :nr_seg_rank, :string

    field :nr_seg_ini, :string

    field :nr_seg_min, :string

    field :nr_seg_max, :string

    field :nr_seg_reset, :string

    field :nr_seg_value, :string

    field :nr_seg_format, :string

    field :nr_archived, Conduit.QAD.Types.Bool

    field :nr_internal, Conduit.QAD.Types.Bool

    field :nr_effdate, Conduit.QAD.Types.Date

    field :nr_exp_date, Conduit.QAD.Types.Date

    field :nr_user1, :string

    field :nr_user2, :string

    field :nr__qadc01, :string

    field :nr_curr_effdate, Conduit.QAD.Types.Date

    field :nr_valuemask, :string

    field :nr_domain, :string

    field :oid_nr_mstr, :decimal, primary_key: true

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
