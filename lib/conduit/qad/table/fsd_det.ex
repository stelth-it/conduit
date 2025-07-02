defmodule Elixir.Conduit.QAD.Table.Fsd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_fsd_det" do
    field :fsd_loc, :string

    field :fsd_lotser, :string

    field :fsd_qty_tran, :decimal

    field :fsd_site, :string

    field :fsd_user1, :string

    field :fsd_user2, :string

    field :fsd_ref, :string

    field :fsd_rev, :string

    field :fsd_nbr, :string

    field :fsd_line, :integer

    field :fsd_status, :string

    field :fsd_qty_post, :decimal

    field :fsd_file, :string

    field :fsd_part, :string

    field :fsd_file_line, :integer

    field :fsd_ret_loc, :string

    field :fsd_ret_site, :string

    field :fsd__chr01, :string

    field :fsd__chr02, :string

    field :fsd__int01, :integer

    field :fsd__dec01, :decimal

    field :fsd__log01, Conduit.QAD.Types.Bool

    field :fsd__qadc01, :string

    field :fsd__qadc02, :string

    field :fsd__qadi01, :integer

    field :fsd__qadd01, :decimal

    field :fsd__qadl01, Conduit.QAD.Types.Bool

    field :fsd_inv_ref, :string

    field :fsd_isb_ref, :integer

    field :fsd__qadc03, :string

    field :fsd__qadi02, :integer

    field :fsd__qadd02, :decimal

    field :fsd__qadl02, Conduit.QAD.Types.Bool

    field :fsd_domain, :string

    field :oid_fsd_det, :decimal, primary_key: true

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
