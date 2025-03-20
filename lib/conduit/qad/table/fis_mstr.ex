defmodule Elixir.Conduit.QAD.Table.Fis_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_fis_mstr" do
    field :fis_column, :integer

    field :fis_desc, :string

    field :fis_detail, Conduit.QAD.Types.Bool

    field :fis_label, :string

    field :fis_order, :integer

    field :fis_row_type, :string

    field :fis_sort, :string

    field :fis_total, Conduit.QAD.Types.Bool

    field :fis_include_fix, Conduit.QAD.Types.Bool

    field :fis_mod_userid, :string

    field :fis_mod_date, Conduit.QAD.Types.Date

    field :fis_user1, :string

    field :fis_user2, :string

    field :fis__chr01, :string

    field :fis__chr02, :string

    field :fis__dte01, Conduit.QAD.Types.Date

    field :fis__dec01, :decimal

    field :fis__int01, :integer

    field :fis__log01, Conduit.QAD.Types.Bool

    field :fis__qadc01, :string

    field :fis__qadc02, :string

    field :fis__qadt01, Conduit.QAD.Types.Date

    field :fis__qade01, :decimal

    field :fis__qadi01, :integer

    field :fis__qadl01, Conduit.QAD.Types.Bool

    field :fis_domain, :string

    field :oid_fis_mstr, :decimal, primary_key: true

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
