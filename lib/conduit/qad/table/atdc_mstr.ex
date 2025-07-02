defmodule Elixir.Conduit.QAD.Table.Atdc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_atdc_mstr" do
    field :oid_atdc_mstr, :decimal, primary_key: true

    field :atdc_name, :string

    field :atdc_phy_name, :string

    field :atdc_dir, :string

    field :atdc_host, :string

    field :atdc_server, :string

    field :atdc_type, :string

    field :atdc_network, :string

    field :atdc_parmfile, :string

    field :atdc_online, Conduit.QAD.Types.Bool

    field :atdc_desc, :string

    field :atdc__qadt01, Conduit.QAD.Types.Date

    field :atdc__qadt02, Conduit.QAD.Types.Date

    field :atdc_mod_date, Conduit.QAD.Types.Date

    field :atdc_mod_userid, :string

    field :atdc_user1, :string

    field :atdc_user2, :string

    field :atdc__qadc01, :string

    field :atdc__qadc02, :string

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
