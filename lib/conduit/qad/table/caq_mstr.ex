defmodule Elixir.Conduit.QAD.Table.Caq_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_caq_mstr" do
    field :caq_que, :string

    field :caq_desc, :string

    field :caq_area, :string

    field :caq_node, :string

    field :caq__chr01, :string

    field :caq__chr02, :string

    field :caq__chr03, :string

    field :caq__log01, Conduit.QAD.Types.Bool

    field :caq__log02, Conduit.QAD.Types.Bool

    field :caq__dte01, Conduit.QAD.Types.Date

    field :caq__dte02, Conduit.QAD.Types.Date

    field :caq__dec01, :decimal

    field :caq__dec02, :decimal

    field :caq_user1, :string

    field :caq_user2, :string

    field :caq_prob_pri, Conduit.QAD.Types.Bool

    field :caq_field, Conduit.QAD.Types.Bool

    field :caq_default_rte, :string

    field :caq_create_wo, Conduit.QAD.Types.Bool

    field :caq_create_rte, Conduit.QAD.Types.Bool

    field :caq_create_bom, Conduit.QAD.Types.Bool

    field :caq_area_sc, Conduit.QAD.Types.Bool

    field :caq_area_pri, Conduit.QAD.Types.Bool

    field :caq_3rd_party, Conduit.QAD.Types.Bool

    field :caq_depot, Conduit.QAD.Types.Bool

    field :caq_file_type, :string

    field :caq_domain, :string

    field :oid_caq_mstr, :decimal, primary_key: true

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
