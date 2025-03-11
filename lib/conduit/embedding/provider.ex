defmodule Conduit.Embedding.Provider do
  @doc """
  Submits the input string to be embedded.
  Must return either an `:error` tuple or an 
  `:ok` tuple containing the embedding as 
  a list.
  """
  @callback embed(input :: String.t()) ::
              embedding :: {:ok, list(integer() | float())} | {:error, Exception.t()}
end
