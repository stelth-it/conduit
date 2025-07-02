defmodule Elixir.Conduit.QAD.Table.Ers_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ers_mstr" do
    field :ers_vend, :string

    field :ers_site, :string

    field :ers_part, :string

    field :ers_opt, :integer

    field :ers_pr_lst_tp, :integer

    field :ers_user1, :string

    field :ers_user2, :string

    field :ers__qadc01, :string

    field :ers__qadc02, :string

    field :ers_mod_date, Conduit.QAD.Types.Date

    field :ers_mod_userid, :string

    field :ers_domain, :string

    field :oid_ers_mstr, :decimal, primary_key: true

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
