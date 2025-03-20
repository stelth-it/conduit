defmodule Elixir.Conduit.QAD.Table.Vdf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vdf_mstr" do
    field :vdf_addr, :string

    field :vdf_birthcity, :string

    field :vdf_birthday, Conduit.QAD.Types.Date

    field :vdf_fiscal_code, :string

    field :vdf_for_fiscal_code, :string

    field :vdf_rsn_code, :string

    field :vdf_withholdtax, Conduit.QAD.Types.Bool

    field :vdf_mod_userid, :string

    field :vdf_mod_date, Conduit.QAD.Types.Date

    field :vdf_user1, :string

    field :vdf_user2, :string

    field :vdf_userc03, :string

    field :vdf_userc04, :string

    field :vdf_userc05, :string

    field :vdf_userd01, :decimal

    field :vdf_userd02, :decimal

    field :vdf_useri01, :integer

    field :vdf_useri02, :integer

    field :vdf_userl01, Conduit.QAD.Types.Bool

    field :vdf_userl02, Conduit.QAD.Types.Bool

    field :vdf_usert01, Conduit.QAD.Types.Date

    field :vdf_usert02, Conduit.QAD.Types.Date

    field :vdf__qadc01, :string

    field :vdf__qadc02, :string

    field :vdf__qadc03, :string

    field :vdf__qadc04, :string

    field :vdf__qadc05, :string

    field :vdf__qadd01, :decimal

    field :vdf__qadd02, :decimal

    field :vdf__qadi01, :integer

    field :vdf__qadi02, :integer

    field :vdf__qadl01, Conduit.QAD.Types.Bool

    field :vdf__qadl02, Conduit.QAD.Types.Bool

    field :vdf__qadt01, Conduit.QAD.Types.Date

    field :vdf__qadt02, Conduit.QAD.Types.Date

    field :vdf_domain, :string

    field :oid_vdf_mstr, :decimal, primary_key: true

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
