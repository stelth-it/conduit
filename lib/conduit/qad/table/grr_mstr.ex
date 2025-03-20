defmodule Elixir.Conduit.QAD.Table.Grr_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_grr_mstr" do
    field :grr_row_group, :string

    field :grr_desc, :string

    field :grr_width, :integer

    field :grr_add_id, :string

    field :grr_add_date, Conduit.QAD.Types.Date

    field :grr_mod_id, :string

    field :grr_mod_date, Conduit.QAD.Types.Date

    field :grr_group, :string

    field :grr_status, Conduit.QAD.Types.Bool

    field :grr_cmtindx, :integer

    field :grr_user1, :string

    field :grr_user2, :string

    field :grr_cont_pg, Conduit.QAD.Types.Bool

    field :grr_brk_gl, :string

    field :grr_brk_ac, :string

    field :grr__qadc01, :string

    field :grr_domain, :string

    field :oid_grr_mstr, :decimal, primary_key: true

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
