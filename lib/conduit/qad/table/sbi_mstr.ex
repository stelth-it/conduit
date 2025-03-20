defmodule Elixir.Conduit.QAD.Table.Sbi_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_sbi_mstr" do
    field :sbi_nbr, :string

    field :sbi_bill, :string

    field :sbi_xmission, :string

    field :sbi_resp_date, Conduit.QAD.Types.Date

    field :sbi_amt, :decimal

    field :sbi_curr, :string

    field :sbi_lines, :integer

    field :sbi_ctrl_amt, :decimal

    field :sbi_check, :string

    field :sbi_mod_userid, :string

    field :sbi_mod_date, Conduit.QAD.Types.Date

    field :sbi_user1, :string

    field :sbi_user2, :string

    field :sbi_user3, :string

    field :sbi_user4, :string

    field :sbi_user5, :string

    field :sbi__qadc01, :string

    field :sbi__qadc02, :string

    field :sbi__qadc03, :string

    field :sbi__qadc04, :string

    field :sbi__qadc05, :string

    field :sbi__qadc06, :string

    field :sbi__qadc07, :string

    field :sbi__qadc08, :string

    field :sbi__qadc09, :string

    field :sbi__qadc10, :string

    field :sbi__qadi01, :integer

    field :sbi__qadi02, :integer

    field :sbi__qadi03, :integer

    field :sbi__qadi04, :integer

    field :sbi__qadi05, :integer

    field :sbi__qadd01, :decimal

    field :sbi__qadd02, :decimal

    field :sbi__qadd03, :decimal

    field :sbi__qadd04, :decimal

    field :sbi__qadd05, :decimal

    field :sbi__qadl01, Conduit.QAD.Types.Bool

    field :sbi__qadl02, Conduit.QAD.Types.Bool

    field :sbi__qadl03, Conduit.QAD.Types.Bool

    field :sbi__qadl04, Conduit.QAD.Types.Bool

    field :sbi__qadl05, Conduit.QAD.Types.Bool

    field :sbi__qadt01, Conduit.QAD.Types.Date

    field :sbi__qadt02, Conduit.QAD.Types.Date

    field :sbi__qadt03, Conduit.QAD.Types.Date

    field :sbi__qadt04, Conduit.QAD.Types.Date

    field :sbi__qadt05, Conduit.QAD.Types.Date

    field :sbi_domain, :string

    field :oid_sbi_mstr, :decimal, primary_key: true

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
