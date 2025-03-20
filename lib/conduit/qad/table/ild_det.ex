defmodule Elixir.Conduit.QAD.Table.Ild_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ild_det" do
    field :ild_part, :string

    field :ild_site, :string

    field :ild_loc, :string

    field :ild_source_loc, :string

    field :ild_rop, :decimal

    field :ild_sfty_stk, :decimal

    field :ild_ord_mult, :decimal

    field :ild_mod_date, Conduit.QAD.Types.Date

    field :ild_userid, :string

    field :ild_user1, :string

    field :ild_user2, :string

    field :ild__qadc01, :string

    field :ild_domain, :string

    field :oid_ild_det, :decimal, primary_key: true

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
