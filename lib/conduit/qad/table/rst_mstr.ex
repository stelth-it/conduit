defmodule Elixir.Conduit.QAD.Table.Rst_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_rst_mstr" do
    field :rst_appr_code, :string

    field :rst_desc, :string

    field :rst_notify1, :string

    field :rst_notify2, :string

    field :rst_mod_date, Conduit.QAD.Types.Date

    field :rst_userid, :string

    field :rst_user1, :string

    field :rst_user2, :string

    field :rst_svrty_list, :string

    field :rst_notify1_mail, :string

    field :rst_notify2_mail, :string

    field :rst__qadc01, :string

    field :rst_domain, :string

    field :oid_rst_mstr, :decimal, primary_key: true

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
