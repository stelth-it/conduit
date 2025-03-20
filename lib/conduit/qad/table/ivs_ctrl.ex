defmodule Elixir.Conduit.QAD.Table.Ivs_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ivs_ctrl" do
    field :ivs_index1, :integer

    field :ivs_cmmts, Conduit.QAD.Types.Bool

    field :ivs_so_pre, :string

    field :ivs_so_nbr, :integer

    field :ivs_ar_acct, :string

    field :ivs_ar_sub, :string

    field :ivs_ar_cc, :string

    field :ivs_prep_acct, :string

    field :ivs_prep_sub, :string

    field :ivs_prep_cc, :string

    field :ivs_ptax_acct, :string

    field :ivs_ptax_sub, :string

    field :ivs_ptax_cc, :string

    field :ivs_inv_type, :string

    field :ivs_mod_date, Conduit.QAD.Types.Date

    field :ivs_mod_userid, :string

    field :ivs_user1, :string

    field :ivs_user2, :string

    field :ivs__qadc01, :string

    field :ivs__qadd01, :decimal

    field :ivs__qadi01, :integer

    field :ivs__qadl01, Conduit.QAD.Types.Bool

    field :ivs__qadt01, Conduit.QAD.Types.Date

    field :ivs_domain, :string

    field :oid_ivs_ctrl, :decimal, primary_key: true

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
