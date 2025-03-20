defmodule Elixir.Conduit.QAD.Table.Mpp_det do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_mpp_det" do
    field :mpp_program, :string

    field :mpp_sequence, :integer

    field :mpp_parm, :string

    field :mpp_desc, :string

    field :mpp_field_type, :string

    field :mpp_line, :integer

    field :mpp_mod_date, Conduit.QAD.Types.Date

    field :mpp_mod_userid, :string

    field :mpp_user1, :string

    field :mpp_user2, :string

    field :mpp__chr01, :string

    field :mpp__log01, Conduit.QAD.Types.Bool

    field :mpp__qadc01, :string

    field :mpp__qadt01, Conduit.QAD.Types.Date

    field :mpp__qade01, :decimal

    field :mpp__qadl01, Conduit.QAD.Types.Bool

    field :mpp_domain, :string

    field :oid_mpp_det, :decimal, primary_key: true

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
