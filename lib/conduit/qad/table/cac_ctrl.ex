defmodule Elixir.Conduit.QAD.Table.Cac_ctrl do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cac_ctrl" do
    field :cac_nbr, :integer

    field :cac_user1, :string

    field :cac_user2, :string

    field :cac__qadi01, :integer

    field :cac__qadc01, :string

    field :cac__qadc02, :string

    field :cac__qadl01, Conduit.QAD.Types.Bool

    field :cac__qadl02, Conduit.QAD.Types.Bool

    field :cac_mod_userid, :string

    field :cac_mod_date, Conduit.QAD.Types.Date

    field :cac_upd_isb, Conduit.QAD.Types.Bool

    field :cac_quote_pre, :string

    field :cac_quote, :integer

    field :cac_quote_que, :string

    field :cac_quote_days, :integer

    field :cac_ex_ratetype, :string

    field :cac_domain, :string

    field :oid_cac_ctrl, :decimal, primary_key: true

    field :cac_mulskill_wnd, Conduit.QAD.Types.Bool

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
