defmodule Conduit.InvalidApiResponseError do
  @moduledoc """
  Represents an unexpected response from an API.
  This could be because we received an invalid 
  status code, or the body did not contain 
  info that we expected or could not parsed.
  """
  defexception [:message, :validation_errors, :response]

  @type t :: %__MODULE__{
          message: String.t(),
          validation_errors: Ecto.Changeset.t() | map() | nil,
          response: Req.Response.t() | nil
        }
end
