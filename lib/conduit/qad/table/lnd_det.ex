defmodule Elixir.Conduit.QAD.Table.Lnd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_lnd_det" do
    field :lnd_line, :string

    field :lnd_site, :string

    field :lnd_part, :string

    field :lnd_rate, :decimal

    field :lnd_start, Conduit.QAD.Types.Date

    field :lnd_expire, Conduit.QAD.Types.Date

    field :lnd_user1, :string

    field :lnd_user2, :string

    field :lnd_sequence, :decimal

    field :lnd_bom, :string

    field :lnd_prod_um, :string

    field :lnd_setup, :string

    field :lnd_run, :string

    field :lnd_tool, :string

    field :lnd_cmtindx, :integer

    field :lnd_run_size, :integer

    field :lnd_set_size, :integer

    field :lnd__chr01, :string

    field :lnd__chr02, :string

    field :lnd__chr03, :string

    field :lnd__chr04, :string

    field :lnd__chr05, :string

    field :lnd__dec01, :decimal

    field :lnd__dec02, :decimal

    field :lnd__dec03, :decimal

    field :lnd__log01, Conduit.QAD.Types.Bool

    field :lnd__qadl01, Conduit.QAD.Types.Bool

    field :lnd_run_seq1, :string

    field :lnd_run_seq2, :string

    field :lnd_domain, :string

    field :oid_lnd_det, :decimal, primary_key: true

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
