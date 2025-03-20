defmodule Elixir.Conduit.QAD.Table.Cnsu_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cnsu_mstr" do
    field :cnsu_pkey, :integer

    field :cnsu_batch, :integer

    field :cnsu_trans_date, Conduit.QAD.Types.Date

    field :cnsu_eff_date, Conduit.QAD.Types.Date

    field :cnsu_po_nbr, :string

    field :cnsu_pod_line, :integer

    field :cnsu_site, :string

    field :cnsu_part, :string

    field :cnsu_qty_used, :decimal

    field :cnsu_cum_qty, :decimal

    field :cnsu_lotser, :string

    field :cnsu_ref, :string

    field :cnsu_trnbr, :integer

    field :cnsu_print_flag, Conduit.QAD.Types.Bool

    field :cnsu_export_flag, Conduit.QAD.Types.Bool

    field :cnsu_mod_userid, :string

    field :cnsu_mod_date, Conduit.QAD.Types.Date

    field :cnsu_user1, :string

    field :cnsu_user2, :string

    field :cnsu__qadc01, :string

    field :cnsu__qadc02, :string

    field :cnsu_edi_batch, :string

    field :cnsu_domain, :string

    field :oid_cnsu_mstr, :decimal, primary_key: true

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
