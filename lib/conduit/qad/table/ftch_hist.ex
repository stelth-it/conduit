defmodule Elixir.Conduit.QAD.Table.Ftch_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ftch_hist" do
    field :ftch_desc, :string

    field :ftch_eff_date, Conduit.QAD.Types.Date

    field :ftch_eng_code, :string

    field :ftch_ent_date, Conduit.QAD.Types.Date

    field :ftch_model, :string

    field :ftch_nbr, :string

    field :ftch_part, :string

    field :ftch_serial, :string

    field :ftch_swapped, Conduit.QAD.Types.Bool

    field :ftch_trans, :string

    field :ftch_trnbr, :integer

    field :ftch__chr01, :string

    field :ftch__dte01, Conduit.QAD.Types.Date

    field :ftch__log01, Conduit.QAD.Types.Bool

    field :ftch_prior_value, :string

    field :ftch__qadt01, Conduit.QAD.Types.Date

    field :ftch__qadl01, Conduit.QAD.Types.Bool

    field :ftch_mod_date, Conduit.QAD.Types.Date

    field :ftch_mod_userid, :string

    field :ftch_user1, :string

    field :ftch_user2, :string

    field :ftch__qadc02, :string

    field :ftch__qadd01, :decimal

    field :ftch_domain, :string

    field :oid_ftch_hist, :decimal, primary_key: true

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
