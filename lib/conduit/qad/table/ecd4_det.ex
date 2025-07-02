defmodule Elixir.Conduit.QAD.Table.Ecd4_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ecd4_det" do
    field :ecd4_part, :string

    field :ecd4_routing, :string

    field :ecd4_op, :integer

    field :ecd4_nbr, :string

    field :ecd4_property, :string

    field :ecd4_cmtindx, :integer

    field :ecd4_user1, :string

    field :ecd4_user2, :string

    field :ecd4_propertyum, :string

    field :ecd4_specid, :integer

    field :ecd4__qadi01, :integer

    field :ecd4_doc_nbr, :integer

    field :ecd4_sequence, :string

    field :ecd4_testmthd, :string

    field :ecd4_minimum, :string

    field :ecd4_maximum, :string

    field :ecd4_target, :string

    field :ecd4_attribute, :string

    field :ecd4_attach, :string

    field :ecd4_spec_det, :string

    field :ecd4_doc_rev, :decimal

    field :ecd4__qadc01, :string

    field :ecd4_domain, :string

    field :oid_ecd4_det, :decimal, primary_key: true

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
