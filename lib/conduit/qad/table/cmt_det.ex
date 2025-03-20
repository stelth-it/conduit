defmodule Elixir.Conduit.QAD.Table.Cmt_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cmt_det" do
    field :cmt_indx, :integer

    field :cmt_seq, :integer

    field :cmt_ref, :string

    field :cmt_type, :string

    field :cmt_cmmt, {:array, :string}

    field :cmt_print, :string

    field :cmt_lang, :string

    field :cmt_user1, :string

    field :cmt_user2, :string

    field :cmt_start, Conduit.QAD.Types.Date

    field :cmt_expire, Conduit.QAD.Types.Date

    field :cmt__qadc01, :string

    field :cmt_domain, :string

    field :oid_cmt_det, :decimal, primary_key: true

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
