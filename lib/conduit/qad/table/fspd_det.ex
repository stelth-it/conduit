defmodule Elixir.Conduit.QAD.Table.Fspd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fspd_det" do
    field :fspd_domain, :string

    field :fspd_part, :string

    field :fspd_itm_qty, :decimal

    field :fspd_so_nbr, :string

    field :fspd_bom_code, :string

    field :oid_itm_det, :decimal, primary_key: true

    field :oid_fspd_det, :decimal, primary_key: true

    field :fspd_consumed, Conduit.QAD.Types.Bool

    field :fspd_user1, :string

    field :fspd_user2, :string

    field :fspd__qadc01, :string

    field :fspd__qadc02, :string

    field :fspd_mod_userid, :string

    field :fspd_mod_date, Conduit.QAD.Types.Date

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
