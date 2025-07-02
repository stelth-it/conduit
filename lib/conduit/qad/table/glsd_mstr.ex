defmodule Elixir.Conduit.QAD.Table.Glsd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_glsd_mstr" do
    field :glsd_nbr, :string

    field :glsd_select, :integer

    field :glsd_lang, :string

    field :glsd_src_desc, :string

    field :glsd_mod_userid, :string

    field :glsd_mod_date, Conduit.QAD.Types.Date

    field :glsd_user1, :string

    field :glsd_user2, :string

    field :glsd__qadc01, :string

    field :glsd__qadc02, :string

    field :glsd_exec, :string

    field :glsd_domain, :string

    field :oid_glsd_mstr, :decimal, primary_key: true

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
