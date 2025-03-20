defmodule Elixir.Conduit.QAD.Table.Pjt_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pjt_mstr" do
    field :pjt_code, :string

    field :pjt_ca_int_type, :string

    field :pjt_cmtindx, :integer

    field :pjt_desc, :string

    field :pjt_priority, :integer

    field :pjt_prod_line, :string

    field :pjt_pr_list, :string

    field :pjt_taxable, Conduit.QAD.Types.Bool

    field :pjt_taxc, :string

    field :pjt_mod_date, Conduit.QAD.Types.Date

    field :pjt_mod_userid, :string

    field :pjt_user1, :string

    field :pjt_user2, :string

    field :pjt__qadc01, :string

    field :pjt__qadd01, :decimal

    field :pjt__qadi01, :integer

    field :pjt__qadl01, Conduit.QAD.Types.Bool

    field :pjt__qadt01, Conduit.QAD.Types.Date

    field :pjt_domain, :string

    field :oid_pjt_mstr, :decimal, primary_key: true

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
