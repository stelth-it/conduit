defmodule Elixir.Conduit.QAD.Table.Kbmd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_kbmd_mstr" do
    field :kbmd_part, :string

    field :kbmd_supp_source, :string

    field :kbmd_supp_ref, :string

    field :kbmd_cons_source, :string

    field :kbmd_cons_ref, :string

    field :kbmd_line, :string

    field :kbmd_pattern, :string

    field :kbmd_period, :string

    field :kbmd_demand, :integer

    field :kbmd_mod_userid, :string

    field :kbmd_mod_date, Conduit.QAD.Types.Date

    field :kbmd_user1, :string

    field :kbmd_user2, :string

    field :kbmd__chr01, :string

    field :kbmd__dec01, :decimal

    field :kbmd__dte01, Conduit.QAD.Types.Date

    field :kbmd__log01, Conduit.QAD.Types.Bool

    field :kbmd__int01, :integer

    field :kbmd__qadc01, :string

    field :kbmd__qadi01, :integer

    field :kbmd__qadd01, :decimal

    field :kbmd__qadl01, Conduit.QAD.Types.Bool

    field :kbmd__qadt01, Conduit.QAD.Types.Date

    field :kbmd_domain, :string

    field :oid_kbmd_mstr, :decimal, primary_key: true

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
