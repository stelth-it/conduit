defmodule Elixir.Conduit.QAD.Table.Knbsm_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_knbsm_mstr" do
    field :knbsm_site, :string

    field :knbsm_supermarket_id, :string

    field :knbsm_desc, :string

    field :knbsm_keyid, :decimal

    field :knbsm_inv_loc, :string

    field :knbsm_inv_loc_type, :string

    field :knbsm_dest_fax, :string

    field :knbsm_dest_fax2, :string

    field :knbsm_dest_email, :string

    field :knbsm_mod_date, Conduit.QAD.Types.Date

    field :knbsm_mod_userid, :string

    field :knbsm_user1, :string

    field :knbsm_user2, :string

    field :knbsm__qadc01, :string

    field :knbsm__qadc02, :string

    field :knbsm_domain, :string

    field :knbsm_cmtindx, :integer

    field :oid_knbsm_mstr, :decimal, primary_key: true

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
