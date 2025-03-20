defmodule Elixir.Conduit.QAD.Table.Te_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_te_mstr" do
    field :te_site, :string

    field :te_nbr, :integer

    field :te_line, :integer

    field :te_exp_type, :string

    field :te_updt, :string

    field :te_dest, :string

    field :te_pgm, :string

    field :te_userid, :string

    field :te_date, Conduit.QAD.Types.Date

    field :te_time, :string

    field :te_date_exp, Conduit.QAD.Types.Date

    field :te_time_exp, :string

    field :te_date_deliv, Conduit.QAD.Types.Date

    field :te_time_deliv, :string

    field :te_pgm_errs, :integer

    field :te_pgm_warn, :integer

    field :te_pgm_msgs, {:array, :string}

    field :te_data, :string

    field :te_user1, :string

    field :te_user2, :string

    field :te__qadc01, :string

    field :te__qadc02, :string

    field :te__qadc03, :string

    field :te__qadc04, :string

    field :te__qadi05, :integer

    field :te__qadi06, :integer

    field :te__qadd07, :decimal

    field :te__qadd08, :decimal

    field :te__qadt09, Conduit.QAD.Types.Date

    field :te__qadt10, Conduit.QAD.Types.Date

    field :te__qadl11, Conduit.QAD.Types.Bool

    field :te__qadl12, Conduit.QAD.Types.Bool

    field :te__chr01, :string

    field :te__chr02, :string

    field :te__dec01, :decimal

    field :te__dec02, :decimal

    field :te__dte01, Conduit.QAD.Types.Date

    field :te__dte02, Conduit.QAD.Types.Date

    field :te__log01, Conduit.QAD.Types.Bool

    field :te__log02, Conduit.QAD.Types.Bool

    field :te_domain, :string

    field :oid_te_mstr, :decimal, primary_key: true

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
