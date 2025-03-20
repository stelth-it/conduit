defmodule Elixir.Conduit.QAD.Table.Arsd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_arsd_det" do
    field :arsd_batch, :string

    field :arsd_line, :integer

    field :arsd_nbr, :string

    field :arsd_acct, :string

    field :arsd_sub, :string

    field :arsd_cc, :string

    field :arsd_ex_rate, :decimal

    field :arsd_ex_rate2, :decimal

    field :arsd_ex_ratetype, :string

    field :arsd_exru_seq, :integer

    field :arsd_mod_date, Conduit.QAD.Types.Date

    field :arsd_mod_userid, :string

    field :arsd_user1, :string

    field :arsd_user2, :string

    field :arsd__qadc01, :string

    field :arsd__qadc02, :string

    field :arsd_domain, :string

    field :oid_arsd_det, :decimal, primary_key: true

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
