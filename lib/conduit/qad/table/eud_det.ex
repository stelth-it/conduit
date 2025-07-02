defmodule Elixir.Conduit.QAD.Table.Eud_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eud_det" do
    field :eud_addr, :string

    field :eud_ls_type, :string

    field :eud_sort, :string

    field :eud_phone, :string

    field :eud_fax, :string

    field :eud_title, :string

    field :eud_type, :string

    field :eud_updt, Conduit.QAD.Types.Date

    field :eud_nametype, :string

    field :eud_user1, :string

    field :eud_user2, :string

    field :eud_mail_addr, :string

    field :eud_trnbr, :integer

    field :eud_mod_userid, :string

    field :eud_mod_date, Conduit.QAD.Types.Date

    field :eud__chr01, :string

    field :eud__chr02, :string

    field :eud__chr03, :string

    field :eud__int01, :integer

    field :eud__dte01, Conduit.QAD.Types.Date

    field :eud__log01, Conduit.QAD.Types.Bool

    field :eud__qadc01, :string

    field :eud__qadc02, :string

    field :eud__qadc03, :string

    field :eud__qadi01, :integer

    field :eud__qadt01, Conduit.QAD.Types.Date

    field :eud__qadl01, Conduit.QAD.Types.Bool

    field :eud_domain, :string

    field :oid_eud_det, :decimal, primary_key: true

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
