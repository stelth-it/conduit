defmodule Elixir.Conduit.QAD.Table.Url_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_url_mstr" do
    field :url_field, :string

    field :url_field_value, :string

    field :url_call_pgm, :string

    field :url_exec, :string

    field :url_desc, :string

    field :url__qadc02, :string

    field :url_addr, :string

    field :url_mod_userid, :string

    field :url_mod_date, Conduit.QAD.Types.Date

    field :url_user1, :string

    field :url_user2, :string

    field :url_image, :string

    field :url__qadi02, :integer

    field :url__qadc03, :string

    field :url__qadi01, :integer

    field :url__qadl01, Conduit.QAD.Types.Bool

    field :url__qadt01, Conduit.QAD.Types.Date

    field :url__qadd01, :decimal

    field :url_primary, Conduit.QAD.Types.Bool

    field :url_script, :string

    field :url_determine, Conduit.QAD.Types.Bool

    field :url_type, :string

    field :oid_url_mstr, :decimal, primary_key: true

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
