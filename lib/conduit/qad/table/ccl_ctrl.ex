defmodule Elixir.Conduit.QAD.Table.Ccl_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ccl_ctrl" do
    field :ccl__qadi01, :integer

    field :ccl_cont_active, Conduit.QAD.Types.Bool

    field :ccl_line_active, Conduit.QAD.Types.Bool

    field :ccl_edit_lc_shipper, Conduit.QAD.Types.Bool

    field :ccl_cc_invoice, Conduit.QAD.Types.Bool

    field :ccl_lc_invoice, Conduit.QAD.Types.Bool

    field :ccl_cc_asn, Conduit.QAD.Types.Bool

    field :ccl_lc_asn, Conduit.QAD.Types.Bool

    field :ccl_charge_type, :string

    field :ccl_mod_userid, :string

    field :ccl_mod_date, Conduit.QAD.Types.Date

    field :ccl_userc01, :string

    field :ccl_userc02, :string

    field :ccl__qadc01, :string

    field :ccl__qadc02, :string

    field :ccl_domain, :string

    field :oid_ccl_ctrl, :decimal, primary_key: true

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
