defmodule Conduit.Quickbooks.AccessToken do
  @moduledoc """
  Represents an access token from the QB API.
  """
  use Ecto.Schema
  import Ecto.Changeset

  @type t :: %__MODULE__{}

  @primary_key false
  embedded_schema do
    field :access_token, :string, redact: true
    field :refresh_token, :string, redact: true
    field :expires_in, :integer
    field :received_at, :utc_datetime
    field :rounding_factor, :float
    field :expire_time, :utc_datetime
  end

  @doc """
  Takes a response from the QB API and creates a new access token.
  The response body must have access_token, expires_in, and 
  refresh_token values.
  """
  @spec from_response(response :: Req.Response.t()) ::
          {:ok, t()} | {:error, Conduit.InvalidApiResponseError.t()}
  def from_response(%Req.Response{body: body} = resp) do
    received_time = DateTime.utc_now()

    %__MODULE__{}
    |> cast(body, [:access_token, :expires_in, :refresh_token])
    |> validate_required([:access_token, :expires_in, :refresh_token])
    |> apply_action(:create)
    |> case do
      {:ok, struct} ->
        %{struct | received_at: received_time, rounding_factor: rounding_factor()}
        |> calculate_expire_time()
        |> then(&{:ok, &1})

      {:error, cs} ->
        {:error,
         %Conduit.InvalidApiResponseError{
           message:
             "Access token could not be extracted from the response.  See validation errors for details.",
           validation_errors: cs,
           response: resp
         }}
    end
  end

  @doc """
  Uses the expires_in and received_at fields to calcuate 
  when the access token will expire.  By default the a 
  rounding factor of .6 will be applied to the expired_in
  timer value.
  """
  def calculate_expire_time(%__MODULE__{received_at: rt, expires_in: vs} = at)
      when is_map(rt) and is_integer(vs) do
    %{at | expire_time: DateTime.shift(rt, second: round(vs * rounding_factor()))}
  end

  @doc """
  Returns true if the access token is expired.
  """
  def expired?(%__MODULE__{expire_time: et}) do
    DateTime.after?(DateTime.utc_now(), et)
  end

  @doc """
  Extracts the access token from the struct
  """
  @spec get_token(access_token :: t()) :: token_value :: String.t()
  def get_token(%__MODULE__{} = at), do: at.access_token

  defp rounding_factor, do: 0.6
end
