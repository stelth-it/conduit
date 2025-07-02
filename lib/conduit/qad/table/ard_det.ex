defmodule Elixir.Conduit.QAD.Table.Ard_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ard_det" do
    field :ard_nbr, :string

    field :ard_acct, :string

    field :ard_cc, :string

    field :ard_amt, :decimal

    field :ard_desc, :string

    field :ard_ref, :string

    field :ard_disc, :decimal

    field :ard_type, :string

    field :ard_user1, :string

    field :ard_user2, :string

    field :ard_tax, :string

    field :ard_tax_at, :string

    field :ard_entity, :string

    field :ard__qad02, :string

    field :ard__qad01, Conduit.QAD.Types.Date

    field :ard_project, :string

    field :ard_cur_amt, :decimal

    field :ard_cur_disc, :decimal

    field :ard_ex_rate, :decimal

    field :ard_tax_usage, :string

    field :ard_taxc, :string

    field :ard_dy_code, :string

    field :ard_dy_num, :string

    field :ard_ex_rate2, :decimal

    field :ard_ex_ratetype, :string

    field :ard_ded_nbr, :integer

    field :ard_exru_seq, :integer

    field :ard_sub, :string

    field :ard_domain, :string

    field :oid_ard_det, :decimal, primary_key: true

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
