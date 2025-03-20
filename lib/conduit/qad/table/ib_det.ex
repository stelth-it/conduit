defmodule Elixir.Conduit.QAD.Table.Ib_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_ib_det" do
    field :ib_sys_seq, :integer

    field :ib_tag, Conduit.QAD.Types.Bool

    field :ib_sys_part, :string

    field :ib_contract, :string

    field :ib_level, :string

    field :ib_eu_nbr, :string

    field :ib_desc, :string

    field :ib_cover, :string

    field :ib_config, :string

    field :ib_sys_ref, :integer

    field :ib_sys_serial, :string

    field :ib_comp_ref, :integer

    field :ib_comp_ser, :string

    field :ib_comp, :string

    field :ib_int_level, :integer

    field :ib_user1, :string

    field :ib_user2, :string

    field :ib__qadc01, :string

    field :ib_domain, :string

    field :oid_ib_det, :decimal, primary_key: true

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
