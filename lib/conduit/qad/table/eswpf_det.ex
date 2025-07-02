defmodule Elixir.Conduit.QAD.Table.Eswpf_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_eswpf_det" do
    field :oid_eswpf_det, :decimal, primary_key: true

    field :oid_eswps_det, :decimal, primary_key: true

    field :eswpf_field_name, :string

    field :eswpf_field_order, :integer

    field :eswpf_include, Conduit.QAD.Types.Bool

    field :eswpf_label_inline, Conduit.QAD.Types.Bool

    field :eswpf_code, :string

    field :eswpf_mod_date, Conduit.QAD.Types.Date

    field :eswpf_mod_userid, :string

    field :eswpf_user1, :string

    field :eswpf_user2, :string

    field :eswpf__qadc01, :string

    field :eswpf__qadc02, :string

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
