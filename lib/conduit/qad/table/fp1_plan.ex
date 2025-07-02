defmodule Elixir.Conduit.QAD.Table.Fp1_plan do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fp1_plan" do
    field :fp1_beg_inv, :decimal

    field :fp1_bklg_act, {:array, :decimal}

    field :fp1_bklg_fcst, {:array, :decimal}

    field :fp1_cost_act, {:array, :decimal}

    field :fp1_cost_fcst, {:array, :decimal}

    field :fp1_part, :string

    field :fp1_site, :string

    field :fp1_target, :decimal

    field :fp1_user1, :string

    field :fp1_user2, :string

    field :fp1_year, :integer

    field :fp1_mod_userid, :string

    field :fp1_mod_date, Conduit.QAD.Types.Date

    field :fp1__chr01, :string

    field :fp1__chr02, :string

    field :fp1__chr03, :string

    field :fp1__chr04, :string

    field :fp1__chr05, :string

    field :fp1__dec01, :decimal

    field :fp1__dec02, :decimal

    field :fp1__log01, Conduit.QAD.Types.Bool

    field :fp1__log02, Conduit.QAD.Types.Bool

    field :fp1__qadc01, :string

    field :fp1_domain, :string

    field :oid_fp1_plan, :decimal, primary_key: true

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
