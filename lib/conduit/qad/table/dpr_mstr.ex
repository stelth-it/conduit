defmodule Elixir.Conduit.QAD.Table.Dpr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dpr_mstr" do
    field :dpr_method, :string

    field :dpr_desc, :string

    field :dpr_beg_date, Conduit.QAD.Types.Date

    field :dpr_end_date, Conduit.QAD.Types.Date

    field :dpr_user1, :string

    field :dpr_user2, :string

    field :dpr_switch, Conduit.QAD.Types.Bool

    field :dpr_basis, :string

    field :dpr_eq, {:array, :string}

    field :dpr_table, Conduit.QAD.Types.Bool

    field :dpr_mod_date, Conduit.QAD.Types.Date

    field :dpr_userid, :string

    field :dpr_opt_method, :string

    field :dpr__qad01, Conduit.QAD.Types.Bool

    field :dpr__qad02, :string

    field :dpr__qad03, :string

    field :oid_dpr_mstr, :decimal, primary_key: true

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
