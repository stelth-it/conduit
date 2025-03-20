defmodule Elixir.Conduit.QAD.Table.Fm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fm_mstr" do
    field :fm_fpos, :integer

    field :fm_desc, :string

    field :fm_sums_into, :integer

    field :fm_type, :string

    field :fm_dr_cr, Conduit.QAD.Types.Bool

    field :fm_page_brk, Conduit.QAD.Types.Bool

    field :fm_header, Conduit.QAD.Types.Bool

    field :fm_total, Conduit.QAD.Types.Bool

    field :fm_skip, Conduit.QAD.Types.Bool

    field :fm_underln, Conduit.QAD.Types.Bool

    field :fm_user1, :string

    field :fm_user2, :string

    field :fm_cc_sort, Conduit.QAD.Types.Bool

    field :fm_sub_sort, Conduit.QAD.Types.Bool

    field :fm__qadc01, :string

    field :fm_domain, :string

    field :oid_fm_mstr, :decimal, primary_key: true

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
