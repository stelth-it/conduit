defmodule Conduit.Quickbooks.AccessToken do
  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{}

  @primary_key false
  embedded_schema do
    field :value, :string, redact: true
    field :received_on, :utc_datetime
  end

  def from_response(%Req.Response{body: body}) do
    %__MODULE__{
      value: body["access_token"],
      received_on: DateTime.utc_now() |> DateTime.truncate(:second)
    }
  end
end
