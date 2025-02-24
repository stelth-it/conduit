defmodule Conduit.QAD.QadField do
  use TypedEctoSchema
  import Ecto.Changeset

  @primary_key false
  typed_embedded_schema do
    field :order, :integer
    field :field_name, :string
    field :field_type, :string
    field :description, :string
  end

  def new(params) do
    %__MODULE__{}
    |> cast(params, [:order, :field_name, :field_type, :description])
    |> validate_required([:order, :field_name, :field_type])
    |> apply_action(:create)
  end

  def put_description(%__MODULE__{} = s, description) when is_binary(description) do
    %{s | description: description}
  end

  def new!(params) do
    case new(params) do
      {:ok, struct} -> struct
      {:error, changeset} -> raise ArgumentError, "invalid input, #{inspect(changeset)}"
    end
  end
end
