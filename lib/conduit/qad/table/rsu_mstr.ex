defmodule Elixir.Conduit.QAD.Table.Rsu_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_rsu_mstr" do
    field :rsu_appr_code, :string

    field :rsu_index, :integer

    field :rsu_doc_nbr, :string

    field :rsu_doc_type, :string

    field :rsu_appr_date, Conduit.QAD.Types.Date

    field :rsu_route_date, Conduit.QAD.Types.Date

    field :rsu_notify2, :string

    field :rsu_user1, :string

    field :rsu_user2, :string

    field :rsu_notify2_mail, :string

    field :rsu__qadc01, :string

    field :rsu_domain, :string

    field :oid_rsu_mstr, :decimal, primary_key: true

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
