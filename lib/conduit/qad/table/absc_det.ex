# defmodule Elixir.Conduit.QAD.Table.Absc_det do
#   use Ecto.Schema
#   import Ecto.Changeset
#
#   schema "qad_absc_det" do
#     field :absc_abs_id, :string
#
#     field :absc_seq, :integer
#
#     field :absc_carrier, :string
#
#     field :absc_user1, :string
#
#     field :absc_user2, :string
#
#     field :absc__qadc01, :string
#
#     field :absc_domain, :string
#
#     field :oid_absc_det, :decimal, primary_key: true
#
#     timestamps(
#       inserted_at: :pg_inserted_at,
#       updated_at: :pg_updated_at,
#       inserted_at_source: :pg_inserted_at,
#       updated_at_source: :pg_updated_at
#     )
#   end
#
#   def changeset(struct, params \\ %{}) do
#     struct
#     |> cast(params, __MODULE__.__schema__(:fields), empty_values: ["?"] ++ empty_values())
#   end
# end
