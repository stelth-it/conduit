defmodule Elixir.Conduit.QAD.Table.En_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_en_mstr" do
    field :en_entity, :string

    field :en_name, :string

    field :en_primary, Conduit.QAD.Types.Bool

    field :en__qad02, :integer

    field :en__qad01, Conduit.QAD.Types.Bool

    field :en_curr, :string

    field :en_user1, :string

    field :en_user2, :string

    field :en_adj_bs, Conduit.QAD.Types.Bool

    field :en_page_num, :integer

    field :en_next_prot, :integer

    field :en_src_desc_lang, :string

    field :en_addr, :string

    field :en_consolidation, Conduit.QAD.Types.Bool

    field :en_type, :string

    field :en_domain, :string

    field :oid_en_mstr, :decimal, primary_key: true

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
