defmodule Elixir.Conduit.QAD.Table.Vod_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_vod_det" do
    field :vod_ref, :string

    field :vod_acct, :string

    field :vod_cc, :string

    field :vod_project, :string

    field :vod_desc, :string

    field :vod_amt, :decimal

    field :vod_ln, :integer

    field :vod_type, :string

    field :vod_user1, :string

    field :vod_user2, :string

    field :vod_entity, :string

    field :vod_tax_at, :string

    field :vod_tax, :string

    field :vod_tax_usage, :string

    field :vod_taxc, :string

    field :vod_exp_acct, :string

    field :vod_exp_cc, :string

    field :vod__qadc01, :string

    field :vod_taxable, Conduit.QAD.Types.Bool

    field :vod_tax_env, :string

    field :vod_tax_in, Conduit.QAD.Types.Bool

    field :vod_dy_code, :string

    field :vod_dy_num, :string

    field :vod_base_amt, :decimal

    field :vod_sub, :string

    field :vod_exp_sub, :string

    field :vod_pjs_line, :integer

    field :vod_domain, :string

    field :oid_vod_det, :decimal, primary_key: true

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
