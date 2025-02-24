defmodule Conduit.QAD.FieldDetail do
  use TypedEctoSchema
  import Ecto.Changeset

  @primary_key false
  typed_embedded_schema do
    field :field_name, :string
    field :description, :string, default: "none provided"
  end

  @spec new(map()) :: {:ok, t()} | {:error, Ecto.Changeset.t()}
  def new(params) do
    %__MODULE__{}
    |> cast(params, [:field_name, :description])
    |> validate_required([:field_name])
    |> apply_action(:create)
  end

  @spec new!(map()) :: t()
  def new!(params) do
    case new(params) do
      {:ok, field_detail} ->
        field_detail

      {:error, changeset} ->
        raise Ecto.InvalidChangesetError, action: :create, changeset: changeset
    end
  end
end
