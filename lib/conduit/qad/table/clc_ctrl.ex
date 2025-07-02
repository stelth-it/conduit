defmodule Elixir.Conduit.QAD.Table.Clc_ctrl do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_clc_ctrl" do
    field :clc_active, Conduit.QAD.Types.Bool

    field :clc_comp_issue, Conduit.QAD.Types.Bool

    field :clc_lotlevel, :integer

    field :clc_polot_rcpt, Conduit.QAD.Types.Bool

    field :clc_wolot_rcpt, Conduit.QAD.Types.Bool

    field :clc_relot_rcpt, Conduit.QAD.Types.Bool

    field :clc__qadi01, :integer

    field :clc_jp_rcpt, Conduit.QAD.Types.Bool

    field :clc_user1, :string

    field :clc_user2, :string

    field :clc__qadc01, :string

    field :clc_domain, :string

    field :oid_clc_ctrl, :decimal, primary_key: true

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
