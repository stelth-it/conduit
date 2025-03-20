defmodule Elixir.Conduit.QAD.Table.Pigp_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pigp_det" do
    field :pigp_amt_type, :string

    field :pigp_code, :string

    field :pigp_div, :string

    field :pigp_expire, Conduit.QAD.Types.Date

    field :pigp_include, Conduit.QAD.Types.Bool

    field :pigp_list_id, :string

    field :pigp_prod_ref, :string

    field :pigp_prod_type, :integer

    field :pigp_start, Conduit.QAD.Types.Date

    field :pigp_user1, :string

    field :pigp_user2, :string

    field :pigp__qadc01, :string

    field :pigp__qadc02, :string

    field :pigp__qadc03, :string

    field :pigp__qadd01, :decimal

    field :pigp__qadd02, :decimal

    field :pigp__qadi01, :integer

    field :pigp__qadi02, :integer

    field :pigp__qadl01, Conduit.QAD.Types.Bool

    field :pigp__qadl02, Conduit.QAD.Types.Bool

    field :pigp__qadt01, Conduit.QAD.Types.Date

    field :pigp__qadt02, Conduit.QAD.Types.Date

    field :pigp_curr, :string

    field :pigp_srch_type, :integer

    field :pigp_domain, :string

    field :oid_pigp_det, :decimal, primary_key: true

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
