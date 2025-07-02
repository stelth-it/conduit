defmodule Elixir.Conduit.QAD.Table.Sch_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sch_mstr" do
    field :sch_type, :integer

    field :sch_nbr, :string

    field :sch_line, :integer

    field :sch_rlse_id, :string

    field :sch_cr_date, Conduit.QAD.Types.Date

    field :sch_cr_time, :integer

    field :sch_ship, :string

    field :sch_sd_pat, :string

    field :sch_sd_time, :string

    field :sch_raw_qty, :decimal

    field :sch_fab_qty, :decimal

    field :sch_raw_strt, Conduit.QAD.Types.Date

    field :sch_raw_end, Conduit.QAD.Types.Date

    field :sch_fab_strt, Conduit.QAD.Types.Date

    field :sch_fab_end, Conduit.QAD.Types.Date

    field :sch_pcr_qty, :decimal

    field :sch_pcs_date, Conduit.QAD.Types.Date

    field :sch_cmtindx, :integer

    field :sch__chr01, :string

    field :sch__chr02, :string

    field :sch__chr03, :string

    field :sch__chr04, :string

    field :sch__chr05, :string

    field :sch__chr06, :string

    field :sch__chr07, :string

    field :sch__chr08, :string

    field :sch__chr09, :string

    field :sch__chr10, :string

    field :sch__dec01, :decimal

    field :sch__dec02, :decimal

    field :sch__dec03, :decimal

    field :sch__dec04, :decimal

    field :sch__dec05, :decimal

    field :sch__dec06, :decimal

    field :sch__dec07, :decimal

    field :sch__dec08, :decimal

    field :sch__dec09, :decimal

    field :sch__dec10, :decimal

    field :sch__dte01, Conduit.QAD.Types.Date

    field :sch__dte02, Conduit.QAD.Types.Date

    field :sch__log01, Conduit.QAD.Types.Bool

    field :sch__log02, Conduit.QAD.Types.Bool

    field :sch_cumulative, Conduit.QAD.Types.Bool

    field :sch_user1, :string

    field :sch_user2, :string

    field :sch_lr_asn, {:array, :string}

    field :sch_lr_date, {:array, Conduit.QAD.Types.Date}

    field :sch_lr_qty, {:array, :decimal}

    field :sch_lr_cum_qty, {:array, :decimal}

    field :sch_eff_start, Conduit.QAD.Types.Date

    field :sch_eff_end, Conduit.QAD.Types.Date

    field :sch_pdr_qty, :decimal

    field :sch_lr_time, {:array, :string}

    field :sch_from_pid, :string

    field :sch_from_sid, :string

    field :sch_sd_dates, Conduit.QAD.Types.Bool

    field :sch_prp_ext, :string

    field :sch_prp_int, :string

    field :sch_domain, :string

    field :oid_sch_mstr, :decimal, primary_key: true

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
