defmodule Conduit.QAD.FieldDetail do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  embedded_schema do
    field :field_name, :string
    field :description, :string, default: "none provided"
  end

  def new(params) do
    %__MODULE__{}
    |> cast(params, [:field_name, :description])
    |> validate_required([:field_name])
    |> apply_action(:create)
  end

  def new!(params) do
    case new(params) do
      {:ok, field_detail} ->
        field_detail

      {:error, changeset} ->
        raise Ecto.InvalidChangesetError, action: :create, changeset: changeset
    end
  end
end
