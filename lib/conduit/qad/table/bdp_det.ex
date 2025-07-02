defmodule Elixir.Conduit.QAD.Table.Bdp_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_bdp_det" do
    field :bdp_program, :string

    field :bdp_addr, :string

    field :bdp_ref, :string

    field :bdp_seq, :integer

    field :bdp_character, :string

    field :bdp_date, Conduit.QAD.Types.Date

    field :bdp_decimal, :decimal

    field :bdp_integer, :integer

    field :bdp_logical, Conduit.QAD.Types.Bool

    field :bdp_user1, :string

    field :bdp_user2, :string

    field :bdp__qadc01, :string

    field :bdp__qadc02, :string

    field :bdp__qadd01, :decimal

    field :bdp__qadi01, :integer

    field :bdp__qadl01, Conduit.QAD.Types.Bool

    field :bdp__qadt01, Conduit.QAD.Types.Date

    field :bdp_bank, :string

    field :bdp_pay_method, :string

    field :bdp_split, Conduit.QAD.Types.Bool

    field :bdp_userd01, :decimal

    field :bdp_useri01, :integer

    field :bdp_userl01, Conduit.QAD.Types.Bool

    field :bdp_usert01, Conduit.QAD.Types.Date

    field :bdp_mod_date, Conduit.QAD.Types.Date

    field :bdp_mod_userid, :string

    field :bdp_domain, :string

    field :oid_bdp_det, :decimal, primary_key: true

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
