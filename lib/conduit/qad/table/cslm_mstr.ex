defmodule Elixir.Conduit.QAD.Table.Cslm_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cslm_mstr" do
    field :cslm_ctry_code, :string

    field :cslm_auth, :string

    field :cslm_licen, :string

    field :cslm_ctrl, :string

    field :cslm_group, :string

    field :cslm_start, Conduit.QAD.Types.Date

    field :cslm_end, Conduit.QAD.Types.Date

    field :cslm_max_amt, :decimal

    field :cslm_tot_amt, :decimal

    field :cslm_max_qty, :integer

    field :cslm_tot_qty, :integer

    field :cslm_curr, :string

    field :cslm_cmtindx, :integer

    field :cslm_user1, :string

    field :cslm_user2, :string

    field :cslm__qadc01, :string

    field :cslm_domain, :string

    field :oid_cslm_mstr, :decimal, primary_key: true

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
