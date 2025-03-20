defmodule Elixir.Conduit.QAD.Table.Pgh_hist do
  use TypedEctoSchema
  import Ecto.Changeset

  typed_schema "qad_pgh_hist" do
    field :pgh_trnbr, :integer

    field :pgh_status, :string

    field :pgh_time_init, :string

    field :pgh_date, Conduit.QAD.Types.Date

    field :pgh_phone, :string

    field :pgh_ca_nbr, :string

    field :pgh_eng_code, :string

    field :pgh_time_paged, :string

    field :pgh_user1, :string

    field :pgh_user2, :string

    field :pgh__qadc01, :string

    field :pgh__qadc02, :string

    field :pgh__qadt01, Conduit.QAD.Types.Date

    field :pgh__chr01, :string

    field :pgh__chr02, :string

    field :pgh__dte01, Conduit.QAD.Types.Date

    field :pgh__log01, Conduit.QAD.Types.Bool

    field :pgh__qadl01, Conduit.QAD.Types.Bool

    field :pgh_domain, :string

    field :oid_pgh_hist, :decimal, primary_key: true

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
