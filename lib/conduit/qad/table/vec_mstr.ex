defmodule Elixir.Conduit.QAD.Table.Vec_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vec_mstr" do
    field :vec_category, :string

    field :vec_active_flag, Conduit.QAD.Types.Bool

    field :vec_name, :string

    field :vec_desc, :string

    field :vec_max_points, :integer

    field :vec_threshold_points, :integer

    field :vec_comp_method, :string

    field :vec_pp_factor, :integer

    field :vec_pp_counter, Conduit.QAD.Types.Bool

    field :vec_discrete_type, Conduit.QAD.Types.Bool

    field :vec_table_lookup_flag, Conduit.QAD.Types.Bool

    field :vec_mod_userid, :string

    field :vec_mod_date, Conduit.QAD.Types.Date

    field :vec_user1, :string

    field :vec_user2, :string

    field :vec_user3, :string

    field :vec_user4, :string

    field :vec__qadc01, :string

    field :vec__qadc02, :string

    field :vec__qadc03, :string

    field :vec__qadc04, :string

    field :vec__qadd01, :decimal

    field :vec__qadd02, :decimal

    field :vec__qadl01, Conduit.QAD.Types.Bool

    field :vec__qadl02, Conduit.QAD.Types.Bool

    field :vec__qadt01, Conduit.QAD.Types.Date

    field :vec__qadt02, Conduit.QAD.Types.Date

    field :vec__qadi01, :integer

    field :vec__qadi02, :integer

    field :vec_domain, :string

    field :oid_vec_mstr, :decimal, primary_key: true

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
