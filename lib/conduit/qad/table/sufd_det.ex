defmodule Elixir.Conduit.QAD.Table.Sufd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_sufd_det" do
    field :sufd_shipfrom, :string

    field :sufd_shipto, :string

    field :sufd_abs_fld_name, :string

    field :sufd_fld_name, :string

    field :sufd_fld_value, :string

    field :sufd_fld_prompt, Conduit.QAD.Types.Bool

    field :sufd_level, :integer

    field :sufd_validate, :string

    field :sufd_fld_seq, :integer

    field :sufd_mod_userid, :string

    field :sufd_mod_date, Conduit.QAD.Types.Date

    field :sufd_userc01, :string

    field :sufd_userc02, :string

    field :sufd__qadc01, :string

    field :sufd__qadc02, :string

    field :sufd_domain, :string

    field :oid_sufd_det, :decimal, primary_key: true

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
