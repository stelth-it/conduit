defmodule Elixir.Conduit.QAD.Table.Csid_det do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_csid_det" do
    field :csid_ctry_code, :string

    field :csid_auth, :string

    field :csid_ctrl, :string

    field :csid_part, :string

    field :csid_start, Conduit.QAD.Types.Date

    field :csid_end, Conduit.QAD.Types.Date

    field :csid_status, :string

    field :csid_class, :string

    field :csid_pref, :string

    field :csid_addr1, :string

    field :csid_addr2, :string

    field :csid_addr3, :string

    field :csid_orig_ctry, :string

    field :csid_orig_pct, :decimal

    field :csid_intrastat, Conduit.QAD.Types.Bool

    field :csid_user1, :string

    field :csid_user2, :string

    field :csid__qadc01, :string

    field :csid_domain, :string

    field :oid_csid_det, :decimal, primary_key: true

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
