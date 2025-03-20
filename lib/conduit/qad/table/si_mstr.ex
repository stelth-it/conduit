defmodule Elixir.Conduit.QAD.Table.Si_mstr do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_si_mstr" do
    field :si_site, :string

    field :si_desc, :string

    field :si_entity, :string

    field :si_status, :string

    field :si_auto_loc, Conduit.QAD.Types.Bool

    field :si_user1, :string

    field :si_user2, :string

    field :si__chr01, :string

    field :si__chr02, :string

    field :si__chr03, :string

    field :si__chr04, :string

    field :si__chr05, :string

    field :si__dte01, Conduit.QAD.Types.Date

    field :si__dte02, Conduit.QAD.Types.Date

    field :si__dec01, :decimal

    field :si__dec02, :decimal

    field :si__log01, Conduit.QAD.Types.Bool

    field :si_gl_set, :string

    field :si_cur_set, :string

    field :si_db, :string

    field :si_xfer_acct, :string

    field :si_xfer_cc, :string

    field :si_git_acct, :string

    field :si_git_cc, :string

    field :si_canrun, :string

    field :si_ext_vd, Conduit.QAD.Types.Bool

    field :si_btb_vend, :string

    field :si_git_sub, :string

    field :si_xfer_sub, :string

    field :si_decl, :string

    field :si_xfer_ownership, Conduit.QAD.Types.Bool

    field :si_git_location, :string

    field :si_domain, :string

    field :si_type, Conduit.QAD.Types.Bool

    field :oid_si_mstr, :decimal, primary_key: true

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
