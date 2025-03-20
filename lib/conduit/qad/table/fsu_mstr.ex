defmodule Elixir.Conduit.QAD.Table.Fsu_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fsu_mstr" do
    field :fsu_userid, :string

    field :fsu_ca_time_wnd, Conduit.QAD.Types.Bool

    field :fsu_ca_wo_wnd, Conduit.QAD.Types.Bool

    field :fsu_dflt_pri, :integer

    field :fsu_dflt_que, :string

    field :fsu_esc_dflt, :string

    field :fsu_que_prog, :integer

    field :fsu_quote_que, :string

    field :fsu_timezone, :string

    field :fsu__qadc02, :string

    field :fsu__qadc03, :string

    field :fsu__qadc04, :string

    field :fsu__qadc05, :string

    field :fsu__qadl01, Conduit.QAD.Types.Bool

    field :fsu__qadl02, Conduit.QAD.Types.Bool

    field :fsu__qadl03, Conduit.QAD.Types.Bool

    field :fsu__qadl04, Conduit.QAD.Types.Bool

    field :fsu__qadl05, Conduit.QAD.Types.Bool

    field :fsu__qadi01, :integer

    field :fsu__qadi02, :integer

    field :fsu__qadi03, :integer

    field :fsu__qadi04, :integer

    field :fsu__qadi05, :integer

    field :fsu_user1, :string

    field :fsu_user2, :string

    field :fsu__qadc06, :string

    field :fsu__qadt01, Conduit.QAD.Types.Date

    field :fsu__qadt02, Conduit.QAD.Types.Date

    field :fsu_domain, :string

    field :oid_fsu_mstr, :decimal, primary_key: true

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
