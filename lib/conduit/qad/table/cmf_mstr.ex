defmodule Elixir.Conduit.QAD.Table.Cmf_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cmf_mstr" do
    field :cmf_trans_nbr, :integer

    field :cmf_doc_type, :string

    field :cmf_doc_ref, :string

    field :cmf_status, :string

    field :cmf_mod_userid, :string

    field :cmf_mod_date, Conduit.QAD.Types.Date

    field :cmf__qadc01, :string

    field :cmf_ref_date, Conduit.QAD.Types.Date

    field :cmf_ref_time, :integer

    field :cmf_so_po, :string

    field :cmf_user1, :string

    field :cmf_user2, :string

    field :cmf_domain, :string

    field :oid_cmf_mstr, :decimal, primary_key: true

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
