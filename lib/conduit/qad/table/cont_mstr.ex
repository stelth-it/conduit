defmodule Elixir.Conduit.QAD.Table.Cont_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_cont_mstr" do
    field :cont_type, :string

    field :cont_desc, :string

    field :cont_cmtindx, :integer

    field :cont_height, :decimal

    field :cont_width, :decimal

    field :cont_length, :decimal

    field :cont_hwl_um, :string

    field :cont_tare_weight, :decimal

    field :cont_max_load_weight, :decimal

    field :cont_weight_um, :string

    field :cont_volume, :decimal

    field :cont_volume_um, :string

    field :cont_size, :string

    field :cont_color, :string

    field :cont_class, :string

    field :cont_composition, :string

    field :cont_reusable, Conduit.QAD.Types.Bool

    field :cont_returnable, Conduit.QAD.Types.Bool

    field :cont_reference1, :string

    field :cont_reference2, :string

    field :cont_reference3, :string

    field :cont_reference4, :string

    field :cont_reference5, :string

    field :cont_mod_date, Conduit.QAD.Types.Date

    field :cont_mod_userid, :string

    field :cont_user1, :string

    field :cont_user2, :string

    field :cont__qadc01, :string

    field :cont__qadc02, :string

    field :cont_thickness, :decimal

    field :cont_thickness_um, :string

    field :cont_owner, :integer

    field :cont_id_method, :string

    field :cont_special_reqmnts, Conduit.QAD.Types.Bool

    field :cont_domain, :string

    field :oid_cont_mstr, :decimal, primary_key: true

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
