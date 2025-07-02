defmodule Elixir.Conduit.QAD.Table.Emsg_mstr do
  use Ecto.Schema
  import Ecto.Changeset

  schema "qad_emsg_mstr" do
    field :emsg_desc, :string

    field :emsg_cmtindx, :integer

    field :emsg_date, Conduit.QAD.Types.Date

    field :emsg_time, :string

    field :emsg_entered, :string

    field :emsg_user1, :string

    field :emsg_user2, :string

    field :emsg_act_date, Conduit.QAD.Types.Date

    field :emsg_act_time, :string

    field :emsg_trnbr, :integer

    field :emsg_userid, :string

    field :emsg_read, Conduit.QAD.Types.Bool

    field :emsg_name_nbr4, :string

    field :emsg_name_nbr3, :string

    field :emsg_name_nbr2, :string

    field :emsg_name_nbr1, :string

    field :emsg_name_date2, :string

    field :emsg_name_date1, :string

    field :emsg_msg_type, :string

    field :emsg_file_trnbr, :integer

    field :emsg_file_nbr4, :string

    field :emsg_file_nbr3, :string

    field :emsg_file_nbr2, :string

    field :emsg_file_nbr1, :string

    field :emsg_file_name, :string

    field :emsg_file_date2, Conduit.QAD.Types.Date

    field :emsg_file_date1, Conduit.QAD.Types.Date

    field :emsg_eng_code, :string

    field :emsg_complete, Conduit.QAD.Types.Bool

    field :emsg_action, :string

    field :emsg__qadc01, :string

    field :emsg_domain, :string

    field :oid_emsg_mstr, :decimal, primary_key: true

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
