defmodule Conduit.Sage.RequestError do
  require Protocol
  @derive Jason.Encoder
  defexception [:message, :response, :reason]

  # Need to be able to make these into maps for persistence if errors occur
  Protocol.derive(Jason.Encoder, Req.Response, only: [:status, :body, :headers])
end
