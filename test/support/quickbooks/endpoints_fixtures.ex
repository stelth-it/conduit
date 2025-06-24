defmodule Conduit.Quickbooks.EndpointsFixtures do
  alias Conduit.Quickbooks.Endpoints
  alias Conduit.Quickbooks.Endpoints.Endpoint

  @doc """
  Returns a map that represents a valid 
  endpoint.
  """
  def valid_endpoint do
    %{
      type: Enum.random(~w(prod sandbox)),
      company_id: Faker.String.base64(12),
      token_endpoint: Faker.Internet.url(),
      intuit_app: valid_intuit_app(),
      refresh_token: valid_refresh_token()
    }
  end

  def valid_token_response(refresh_token) do
    %{
      access_token: Faker.String.base64(12),
      expires_in: 3600,
      refresh_token: refresh_token
    }
  end

  @doc """
  Returns a map that represents a valid 
  refresh token.
  """
  def valid_refresh_token do
    %{
      value: Faker.String.base64(24),
      retrieved_on: Faker.DateTime.backward(100)
    }
  end

  @doc """
  Returns a map that represents a valid 
  intuit_app.
  """
  def valid_intuit_app do
    %{
      client_id: Faker.String.base64(12),
      client_secret: Faker.String.base64(12),
      app_id: Faker.String.base64(12),
      app_name: Faker.String.base64(12)
    }
  end
end
