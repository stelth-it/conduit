defmodule Elixir.Conduit.QAD.Table.Ccd_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_ccd_mstr" do
    field :ccd_eng_code, :string

    field :ccd__chr08, :string

    field :ccd__chr07, :string

    field :ccd__chr06, :string

    field :ccd__chr05, :string

    field :ccd__chr04, :string

    field :ccd__chr03, :string

    field :ccd__chr02, :string

    field :ccd__chr01, :string

    field :ccd_problem, :string

    field :ccd_hours, :decimal

    field :ccd_sys_part, :string

    field :ccd_sys_ser, :string

    field :ccd_part, :string

    field :ccd_date, :string

    field :ccd_serial, :string

    field :ccd_resolution, :string

    field :ccd_cause, :string

    field :ccd_type, :string

    field :ccd_ca_nbr, :string

    field :ccd_cmtindx, :integer

    field :ccd_line, :integer

    field :ccd_user1, :string

    field :ccd_user2, :string

    field :ccd_itm_line, :integer

    field :ccd_opn_date, Conduit.QAD.Types.Date

    field :ccd__log01, Conduit.QAD.Types.Bool

    field :ccd__qadc01, :string

    field :ccd__qadc02, :string

    field :ccd__qadc03, :string

    field :ccd__qadc04, :string

    field :ccd_mod_date, Conduit.QAD.Types.Date

    field :ccd_mod_userid, :string

    field :ccd_domain, :string

    field :oid_ccd_mstr, :decimal, primary_key: true

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
