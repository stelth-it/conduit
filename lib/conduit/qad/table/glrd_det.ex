defmodule Elixir.Conduit.QAD.Table.Glrd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_glrd_det" do
    field :glrd_code, :string

    field :glrd_fpos, :integer

    field :glrd_acct, :string

    field :glrd_cc, :string

    field :glrd_desc, :string

    field :glrd_sums, :integer

    field :glrd_dr_cr, Conduit.QAD.Types.Bool

    field :glrd_page, Conduit.QAD.Types.Bool

    field :glrd_header, Conduit.QAD.Types.Bool

    field :glrd_total, Conduit.QAD.Types.Bool

    field :glrd_entity, :string

    field :glrd_user1, :string

    field :glrd_user2, :string

    field :glrd_underln, Conduit.QAD.Types.Bool

    field :glrd_skip, Conduit.QAD.Types.Bool

    field :glrd_sub, :string

    field :glrd_acct1, :string

    field :glrd_cc1, :string

    field :glrd_sub1, :string

    field :glrd_line, :integer

    field :glrd__qadc01, :string

    field :glrd_domain, :string

    field :oid_glrd_det, :decimal, primary_key: true

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
