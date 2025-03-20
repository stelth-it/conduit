defmodule Elixir.Conduit.QAD.Table.Ocm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ocm_mstr" do
    field :ocm_start_eff, Conduit.QAD.Types.Date

    field :ocm_area, :string

    field :ocm_page, Conduit.QAD.Types.Bool

    field :ocm_eng_code, :string

    field :ocm_end_eff, Conduit.QAD.Types.Date

    field :ocm_user1, :string

    field :ocm_user2, :string

    field :ocm_mod_date, Conduit.QAD.Types.Date

    field :ocm_mod_userid, :string

    field :ocm__chr01, :string

    field :ocm__dte01, Conduit.QAD.Types.Date

    field :ocm__log01, Conduit.QAD.Types.Bool

    field :ocm__qadc01, :string

    field :ocm__qadt01, Conduit.QAD.Types.Date

    field :ocm__qadl01, Conduit.QAD.Types.Bool

    field :ocm_schedule, :string

    field :ocm_domain, :string

    field :oid_ocm_mstr, :decimal, primary_key: true

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
