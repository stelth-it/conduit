defmodule Elixir.Conduit.QAD.Table.Crd_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_crd_det" do
    field :crd_domain, :string

    field :crd_category, :string

    field :crd_ca_nbr, :string

    field :crd_id, :integer

    field :crd_alarm_date, Conduit.QAD.Types.Date

    field :crd_alarm_time, :string

    field :crd_status, :string

    field :crd_desc, :string

    field :crd_userid, :string

    field :crd_comments, :string

    field :crd_user1, :string

    field :crd_user2, :string

    field :crd__qadc01, :string

    field :crd__qadc02, :string

    field :crd_close, Conduit.QAD.Types.Bool

    field :crd_itm_line, :integer

    field :crd_mod_userid, :string

    field :crd_mod_date, Conduit.QAD.Types.Date

    field :oid_crd_det, :decimal, primary_key: true

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
