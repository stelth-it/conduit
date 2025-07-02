defmodule Elixir.Conduit.QAD.Table.Absd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_absd_det" do
    field :absd_abs_id, :string

    field :absd_shipfrom, :string

    field :absd_abs_fld_name, :string

    field :absd_fld_name, :string

    field :absd_fld_value, :string

    field :absd_fld_prompt, Conduit.QAD.Types.Bool

    field :absd_validate, :string

    field :absd_fld_seq, :integer

    field :absd_mod_userid, :string

    field :absd_mod_date, Conduit.QAD.Types.Date

    field :absd_userc01, :string

    field :absd__qadc01, :string

    field :absd__qadc02, :string

    field :absd_domain, :string

    field :oid_absd_det, :decimal, primary_key: true

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
