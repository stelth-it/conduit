defmodule Elixir.Conduit.QAD.Table.Ptt_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ptt_det" do
    field :ptt_part, :string

    field :ptt_tax_type, :string

    field :ptt_taxc, :string

    field :ptt_taxable, Conduit.QAD.Types.Bool

    field :ptt_user1, :string

    field :ptt_user2, :string

    field :ptt_userid, :string

    field :ptt_mod_date, Conduit.QAD.Types.Date

    field :ptt__qadc01, :string

    field :ptt_domain, :string

    field :oid_ptt_det, :decimal, primary_key: true

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
