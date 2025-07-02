defmodule Elixir.Conduit.QAD.Table.Dc_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_dc_mstr" do
    field :dc_name, :string

    field :dc_phy_name, :string

    field :dc_dir, :string

    field :dc_host, :string

    field :dc_server, :string

    field :dc_type, :string

    field :dc_network, :string

    field :dc_parmfile, :string

    field :dc_active, Conduit.QAD.Types.Bool

    field :dc__chr01, :string

    field :dc__chr02, :string

    field :dc_desc, :string

    field :dc_cmtindx, :integer

    field :dc_user1, :string

    field :dc_user2, :string

    field :dc_use_app, Conduit.QAD.Types.Bool

    field :dc__qadc01, :string

    field :dc__qadc02, :string

    field :dc__qadl01, Conduit.QAD.Types.Bool

    field :dc__qadl02, Conduit.QAD.Types.Bool

    field :oid_dc_mstr, :decimal, primary_key: true

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
