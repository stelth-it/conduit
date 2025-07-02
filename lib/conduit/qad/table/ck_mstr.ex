defmodule Elixir.Conduit.QAD.Table.Ck_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ck_mstr" do
    field :ck_ref, :string

    field :ck_status, :string

    field :ck_nbr, :integer

    field :ck_bank, :string

    field :ck_type, :string

    field :ck_cmtindx, :integer

    field :ck_curr, :string

    field :ck_ex_rate, :decimal

    field :ck_voiddate, Conduit.QAD.Types.Date, primary_key: true

    field :ck_voideff, Conduit.QAD.Types.Date, primary_key: true

    field :ck_user1, :string

    field :ck_user2, :string

    field :ck_clr_date, Conduit.QAD.Types.Date

    field :ck__qadc01, :string

    field :ck_ex_rate2, :decimal

    field :ck_ex_ratetype, :string

    field :ck_exru_seq, :integer

    field :ck_domain, :string

    field :oid_ck_mstr, :decimal, primary_key: true

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
