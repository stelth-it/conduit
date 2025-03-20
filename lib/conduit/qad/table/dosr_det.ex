defmodule Elixir.Conduit.QAD.Table.Dosr_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_dosr_det" do
    field :dosr_domain, :string

    field :dosr_itm_nbr, :string

    field :dosr_itm_line, :integer

    field :dosr_line, :integer

    field :dosr_trans_type, :string

    field :dosr_qty, :decimal

    field :dosr_est_date, Conduit.QAD.Types.Date

    field :dosr_act_date, Conduit.QAD.Types.Date

    field :dosr_site, :string

    field :dosr_loc, :string

    field :dosr_serial, :string

    field :dosr_ref, :integer

    field :dosr_mod_userid, :string

    field :dosr_mod_date, Conduit.QAD.Types.Date

    field :oid_dosr_det, :decimal, primary_key: true

    field :dosr_user1, :string

    field :dosr_user2, :string

    field :dosr__qadc01, :string

    field :dosr__qadc02, :string

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
