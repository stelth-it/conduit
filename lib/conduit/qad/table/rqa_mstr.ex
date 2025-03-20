defmodule Elixir.Conduit.QAD.Table.Rqa_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rqa_mstr" do
    field :rqa_apr, :string

    field :rqa_type, :integer

    field :rqa_site, :string

    field :rqa_prod_line, :string

    field :rqa_entity, :string

    field :rqa_job, :string

    field :rqa_category, :string

    field :rqa_sub_from, :string

    field :rqa_sub_to, :string

    field :rqa_cc_from, :string

    field :rqa_cc_to, :string

    field :rqa_start, Conduit.QAD.Types.Date

    field :rqa_end, Conduit.QAD.Types.Date

    field :rqa_rvw_level, :integer

    field :rqa_rvw_req, Conduit.QAD.Types.Bool

    field :rqa_apr_level, :integer

    field :rqa_apr_req, Conduit.QAD.Types.Bool

    field :rqa_alt_apr, {:array, :string}

    field :rqa_admin_apr, :string

    field :rqa__chr01, :string

    field :rqa__chr02, :string

    field :rqa__chr03, :string

    field :rqa__chr04, :string

    field :rqa__qadc01, :string

    field :rqa__qadc02, :string

    field :rqa__qadc03, :string

    field :rqa__qadc04, :string

    field :rqa_domain, :string

    field :oid_rqa_mstr, :decimal, primary_key: true

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
