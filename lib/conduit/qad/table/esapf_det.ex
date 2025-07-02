defmodule Elixir.Conduit.QAD.Table.Esapf_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_esapf_det" do
    field :oid_esapf_det, :decimal, primary_key: true

    field :oid_esaps_det, :decimal, primary_key: true

    field :esapf_field_order, :integer

    field :esapf_field_name, :string

    field :esapf_include, Conduit.QAD.Types.Bool

    field :esapf_label_inline, Conduit.QAD.Types.Bool

    field :esapf_code, :string

    field :esapf_mod_date, Conduit.QAD.Types.Date

    field :esapf_mod_userid, :string

    field :esapf_user1, :string

    field :esapf_user2, :string

    field :esapf__qadc01, :string

    field :esapf__qadc02, :string

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
