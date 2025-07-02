defmodule Elixir.Conduit.QAD.Table.Cild_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_cild_det" do
    field :cild_cor_inv, :string

    field :cild_cor_so_nbr, :string

    field :cild_mod_date, Conduit.QAD.Types.Date

    field :cild_mod_userid, :string

    field :cild_prev_inv, :string

    field :cild_prev_so_nbr, :string

    field :cild_user1, :string

    field :cild_user2, :string

    field :cild__qadc01, :string

    field :cild__qadc02, :string

    field :cild_cor_line, :integer

    field :cild_prev_line, :integer

    field :cild_line_type, :string

    field :cild_domain, :string

    field :oid_cild_det, :decimal, primary_key: true

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
