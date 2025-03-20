defmodule Elixir.Conduit.QAD.Table.Gri_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_gri_mstr" do
    field :gri_run_id, :integer

    field :gri_report, :string

    field :gri_date, Conduit.QAD.Types.Date

    field :gri_userid, :string

    field :gri_time, :string

    field :gri_lab_bc, :integer

    field :gri_format, :string

    field :gri_round, :string

    field :gri_status, Conduit.QAD.Types.Bool

    field :gri_prt_wrk, Conduit.QAD.Types.Bool

    field :gri_per, :integer

    field :gri_year, :integer

    field :gri_text_ix, {:array, :integer}

    field :gri_defprt, :string

    field :gri_mrg_top, :integer

    field :gri_mrg_bot, :integer

    field :gri_mrg_left, :integer

    field :gri_mrg_right, :integer

    field :gri_ovr_code, {:array, :string}

    field :gri_ovr_type, {:array, :string}

    field :gri_lab_width, :integer

    field :gri_cont_pg, Conduit.QAD.Types.Bool

    field :gri_filtered, Conduit.QAD.Types.Bool

    field :gri_paginated, Conduit.QAD.Types.Bool

    field :gri_zero_suppress, :string

    field :gri_desc, :string

    field :gri_user1, :string

    field :gri_user2, :string

    field :gri__qadc01, :string

    field :gri_domain, :string

    field :oid_gri_mstr, :decimal, primary_key: true

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
