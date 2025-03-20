defmodule Elixir.Conduit.QAD.Table.Suf_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_suf_mstr" do
    field :suf_abs_fld_name, :string

    field :suf_fld_name, :string

    field :suf_fld_value, :string

    field :suf_fld_prompt, Conduit.QAD.Types.Bool

    field :suf_level, :integer

    field :suf_validate, :string

    field :suf_fld_seq, :integer

    field :suf_mod_userid, :string

    field :suf_mod_date, Conduit.QAD.Types.Date

    field :suf_userc01, :string

    field :suf_userc02, :string

    field :suf__qadc01, :string

    field :suf__qadc02, :string

    field :suf_domain, :string

    field :oid_suf_mstr, :decimal, primary_key: true

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
