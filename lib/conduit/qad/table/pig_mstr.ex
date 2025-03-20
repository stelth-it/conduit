defmodule Elixir.Conduit.QAD.Table.Pig_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pig_mstr" do
    field :pig_all_custs, Conduit.QAD.Types.Bool

    field :pig_all_items, Conduit.QAD.Types.Bool

    field :pig_amt_type, :string

    field :pig_code, :string

    field :pig_curr, :string

    field :pig_desc, :string

    field :pig_div, :string

    field :pig_expire, Conduit.QAD.Types.Date

    field :pig_list, :string

    field :pig_list_id, :string

    field :pig_priority, :integer

    field :pig_ref_code, :string

    field :pig_ref_type, :integer

    field :pig_start, Conduit.QAD.Types.Date

    field :pig_val_type, :string

    field :pig_user1, :string

    field :pig_user2, :string

    field :pig__qadc01, :string

    field :pig__qadc02, :string

    field :pig__qadc03, :string

    field :pig__qadd01, :decimal

    field :pig__qadd02, :decimal

    field :pig__qadi01, :integer

    field :pig__qadi02, :integer

    field :pig__qadl01, Conduit.QAD.Types.Bool

    field :pig__qadl02, Conduit.QAD.Types.Bool

    field :pig__qadt01, Conduit.QAD.Types.Date

    field :pig__qadt02, Conduit.QAD.Types.Date

    field :pig_srch_type, :integer

    field :pig_domain, :string

    field :oid_pig_mstr, :decimal, primary_key: true

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
