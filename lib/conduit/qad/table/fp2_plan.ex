defmodule Elixir.Conduit.QAD.Table.Fp2_plan do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fp2_plan" do
    field :fp2_beg_inv, :decimal

    field :fp2_inv_act, {:array, :decimal}

    field :fp2_inv_fcst, {:array, :decimal}

    field :fp2_ord_act, {:array, :decimal}

    field :fp2_ord_fcst, {:array, :decimal}

    field :fp2_part, :string

    field :fp2_site, :string

    field :fp2_target, :decimal

    field :fp2_user1, :string

    field :fp2_user2, :string

    field :fp2_year, :integer

    field :fp2_mod_userid, :string

    field :fp2_mod_date, Conduit.QAD.Types.Date

    field :fp2__chr01, :string

    field :fp2__chr02, :string

    field :fp2__chr03, :string

    field :fp2__chr04, :string

    field :fp2__chr05, :string

    field :fp2__dec01, :decimal

    field :fp2__dec02, :decimal

    field :fp2__log01, Conduit.QAD.Types.Bool

    field :fp2__log02, Conduit.QAD.Types.Bool

    field :fp2__qadc01, :string

    field :fp2_domain, :string

    field :oid_fp2_plan, :decimal, primary_key: true

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
