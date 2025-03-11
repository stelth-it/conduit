defmodule Conduit.Embedding.Provider.VoyageLite do
  @behaviour Conduit.Embedding.Provider

  @impl true
  def embed(input) do
    Req.new(
      method: :post,
      url: url(),
      auth: {:bearer, get_api_key()},
      json: prep_body(input)
    )
    |> Req.Request.put_header("content-type", "application/json")
    |> Req.Request.append_response_steps(check_status: &check_status/1)
    |> Req.Request.append_response_steps(extract_embedding: &extract_embedding/1)
    |> Req.Request.append_response_steps(embedding_missing: &embedding_missing/1)
    |> Req.request()
    |> case do
      {:ok, %{embedding: e}} -> {:ok, e}
      {:error, _} = e -> e
    end
  end

  defp embedding_missing({request, %{embedding: embedding} = response}) when is_list(embedding),
    do: {request, response}

  defp embedding_missing({request, _}),
    do: {request, RuntimeError.exception("no embedding returned")}

  defp extract_embedding({request, response}) do
    {request,
     Map.put(response, :embedding, get_in(response.body, ["data", Access.at(0), "embedding"]))}
  end

  defp check_status({request, response}) do
    if response.status == 200 do
      {request, response}
    else
      {request, RuntimeError.exception("invalid response from endpoint")}
    end
  end

  defp prep_body(body) when is_binary(body) do
    %{
      input: [body],
      model: model_name()
    }
  end

  defp url() do
    "https://api.voyageai.com/v1/embeddings"
  end

  defp model_name() do
    "voyage-3-lite"
  end

  defp get_api_key() do
    Application.get_env(:conduit, :voyage_key)
  end
end
