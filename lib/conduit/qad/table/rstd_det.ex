defmodule Elixir.Conduit.QAD.Table.Rstd_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rstd_det" do
    field :rstd_appr_code, :string

    field :rstd_group, :string

    field :rstd_sequence, :integer

    field :rstd_mod_date, Conduit.QAD.Types.Date

    field :rstd_userid, :string

    field :rstd_user1, :string

    field :rstd_user2, :string

    field :rstd_notify_nxt, Conduit.QAD.Types.Bool

    field :rstd_canreroute, Conduit.QAD.Types.Bool

    field :rstd_svrty_lvl, :integer

    field :rstd__qadc01, :string

    field :rstd_domain, :string

    field :oid_rstd_det, :decimal, primary_key: true

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
