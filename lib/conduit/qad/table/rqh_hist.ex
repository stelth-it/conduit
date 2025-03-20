defmodule Elixir.Conduit.QAD.Table.Rqh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rqh_hist" do
    field :rqh_line, :integer

    field :rqh_nbr, :string

    field :rqh_date, Conduit.QAD.Types.Date

    field :rqh_time, :integer

    field :rqh_seq_nbr, :integer

    field :rqh_apr_userid, :string

    field :rqh_role, :string

    field :rqh_action, :string

    field :rqh_ent_userid, :string

    field :rqh_rtto_userid, :string

    field :rqh_email_list, :string

    field :rqh_role_list, :string

    field :rqh__chr01, :string

    field :rqh__chr02, :string

    field :rqh__chr03, :string

    field :rqh__chr04, :string

    field :rqh__qadc01, :string

    field :rqh__qadc02, :string

    field :rqh__qadc03, :string

    field :rqh__qadc04, :string

    field :rqh_domain, :string

    field :oid_rqh_hist, :decimal, primary_key: true

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
