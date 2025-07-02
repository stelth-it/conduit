defmodule Conduit.Sage.Object.Object do
  use Ecto.Schema
  import Ecto.Changeset
  alias Conduit.Sage.Object.Field
  alias Conduit.Sage.Endpoints.Endpoint

  @primary_key false
  schema "objects" do
    belongs_to(:endpoint, Conduit.Sage.Endpoints.Endpoint, primary_key: true)
    field(:name, :string, primary_key: true)
    embeds_many(:fields, Field)
  end

  def changeset(%__MODULE__{} = o, params \\ %{}) do
    o
    |> cast(params, [:name])
    |> cast_embed(:fields)
    |> validate_required([:name])
  end

  def changeset_with_endpoint(%__MODULE__{} = o, %Endpoint{} = e, params \\ %{}) do
    o
    |> changeset(params)
    |> put_assoc(:endpoint, e)
  end
end
