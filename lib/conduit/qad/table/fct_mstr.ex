defmodule Elixir.Conduit.QAD.Table.Fct_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fct_mstr" do
    field :fct_type, :string

    field :fct_desc, :string

    field :fct_sched_type, :integer

    field :fct_user1, :string

    field :fct_user2, :string

    field :fct__chr01, :string

    field :fct__chr02, :string

    field :fct__int01, :integer

    field :fct__int02, :integer

    field :fct__log01, Conduit.QAD.Types.Bool

    field :fct__log02, Conduit.QAD.Types.Bool

    field :fct__qadc01, :string

    field :fct__qadc02, :string

    field :fct__qadi01, :integer

    field :fct__qadi02, :integer

    field :fct__qadl01, Conduit.QAD.Types.Bool

    field :fct__qadl02, Conduit.QAD.Types.Bool

    field :fct_mod_userid, :string

    field :fct_mod_date, Conduit.QAD.Types.Date

    field :fct_domain, :string

    field :oid_fct_mstr, :decimal, primary_key: true

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
