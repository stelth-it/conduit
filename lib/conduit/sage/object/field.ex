defmodule Conduit.Sage.Object.Field do
  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          required: boolean(),
          description: String.t()
        }

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:type, :string)
    field(:required, :boolean)
    field(:description, :string)
    field(:forbidden, :boolean, default: false)
  end

  def changeset(%__MODULE__{} = f, params \\ %{}) do
    f
    |> cast(params, [:name, :type, :required, :description, :forbidden])
    |> validate_required([:name, :type, :required])
  end
end
