defmodule Elixir.Conduit.QAD.Table.Usr_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_usr_mstr" do
    field :usr_userid, :string

    field :usr_lang, :string

    field :usr_user1, :string

    field :usr_user2, :string

    field :usr_site, :string

    field :usr__qadc05, :string

    field :usr_passwd, :string

    field :usr_name, :string

    field :usr_last_date, Conduit.QAD.Types.Date

    field :usr__qad01, :string

    field :usr__qad02, :string

    field :usr_restrict, Conduit.QAD.Types.Bool

    field :usr__qadc03, :string

    field :usr__qadl03, Conduit.QAD.Types.Bool

    field :usr_addr, :string

    field :usr__qadc02, :string

    field :usr__qadi02, :integer

    field :usr__qadc01, :string

    field :usr__qadl01, Conduit.QAD.Types.Bool

    field :usr__qadl02, Conduit.QAD.Types.Bool

    field :usr__qadi01, :integer

    field :usr__qadc04, :string

    field :usr_mail_address, :string

    field :usr_type, :string

    field :usr_timezone, :string

    field :usr_access_type, :string

    field :usr_access_loc, :string

    field :usr_ctry_code, :string

    field :usr_variant_code, :string

    field :usr_failed_attempts, :integer

    field :usr_force_change, Conduit.QAD.Types.Bool

    field :usr_logon_date, Conduit.QAD.Types.Date

    field :usr_active, Conduit.QAD.Types.Bool

    field :usr_active_by, :string

    field :usr_active_reason, :string

    field :usr_active_date, Conduit.QAD.Types.Date

    field :usr_logon_timezone, :string

    field :usr_remark, :string

    field :usr_logon_time, :integer

    field :oid_usr_mstr, :decimal, primary_key: true

    field :usr_tzdb, :string

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
