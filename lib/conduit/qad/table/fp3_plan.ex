defmodule Elixir.Conduit.QAD.Table.Fp3_plan do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fp3_plan" do
    field :fp3_beg_inv, :decimal

    field :fp3_prod_act, {:array, :decimal}

    field :fp3_prod_fcst, {:array, :decimal}

    field :fp3_ship_act, {:array, :decimal}

    field :fp3_ship_fcst, {:array, :decimal}

    field :fp3_part, :string

    field :fp3_site, :string

    field :fp3_target, :decimal

    field :fp3_apprv_list, :string

    field :fp3_wo_list, :string

    field :fp3_user1, :string

    field :fp3_user2, :string

    field :fp3_year, :integer

    field :fp3_mod_userid, :string

    field :fp3_mod_date, Conduit.QAD.Types.Date

    field :fp3__chr01, :string

    field :fp3__chr02, :string

    field :fp3__chr03, :string

    field :fp3__chr04, :string

    field :fp3__chr05, :string

    field :fp3__dec01, :decimal

    field :fp3__dec02, :decimal

    field :fp3__log01, Conduit.QAD.Types.Bool

    field :fp3__log02, Conduit.QAD.Types.Bool

    field :fp3__qadc01, :string

    field :fp3_domain, :string

    field :oid_fp3_plan, :decimal, primary_key: true

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
