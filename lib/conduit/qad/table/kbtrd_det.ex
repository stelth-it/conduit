defmodule Elixir.Conduit.QAD.Table.Kbtrd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_kbtrd_det" do
    field :kbtrd_kbtr_trans_nbr, :integer

    field :kbtrd_tr_trnbr, :integer

    field :kbtrd_mod_date, Conduit.QAD.Types.Date

    field :kbtrd_mod_userid, :string

    field :kbtrd_user1, :string

    field :kbtrd_user2, :string

    field :kbtrd_useri01, :integer

    field :kbtrd__qadc01, :string

    field :kbtrd__qadc02, :string

    field :kbtrd__qadi01, :integer

    field :kbtrd_dataset, :string

    field :kbtrd_domain, :string

    field :oid_kbtrd_det, :decimal, primary_key: true

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
