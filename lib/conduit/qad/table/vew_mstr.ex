defmodule Elixir.Conduit.QAD.Table.Vew_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_vew_mstr" do
    field :vew_weight_code, :string

    field :vew_name, :string

    field :vew_desc, :string

    field :vew_weight_factor, :decimal

    field :vew_mod_userid, :string

    field :vew_mod_date, Conduit.QAD.Types.Date

    field :vew_user1, :string

    field :vew_user2, :string

    field :vew_user3, :string

    field :vew_user4, :string

    field :vew__qadc01, :string

    field :vew__qadc02, :string

    field :vew__qadc03, :string

    field :vew__qadc04, :string

    field :vew__qadd01, :decimal

    field :vew__qadd02, :decimal

    field :vew__qadl01, Conduit.QAD.Types.Bool

    field :vew__qadl02, Conduit.QAD.Types.Bool

    field :vew__qadt01, Conduit.QAD.Types.Date

    field :vew__qadt02, Conduit.QAD.Types.Date

    field :vew__qadi01, :integer

    field :vew__qadi02, :integer

    field :vew_domain, :string

    field :oid_vew_mstr, :decimal, primary_key: true

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
