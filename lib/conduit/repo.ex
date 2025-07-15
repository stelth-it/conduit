defmodule Conduit.Repo do
  use Ecto.Repo,
    otp_app: :conduit,
    adapter: Ecto.Adapters.Postgres

  @doc """
  Checks if a schema with `schema_name` already exists in the 
  database.
  """
  @spec schema_exists?(schema_name :: String.t()) :: boolean()
  def schema_exists?(schema_name) do
    {:ok, result} =
      query("""
      select schema_name
      from information_schema.schemata;
      """)

    [schema_name] in result.rows
  end

  @doc """
  will create the given `schema_name` in the 
  database if it does not already exist.
  """
  @spec create_schema_if_absent(schema_name :: String.t()) :: :ok
  def create_schema_if_absent(schema_name) do
    if schema_exists?(schema_name) do
      :ok
    else
      {:ok, _} = query("create schema #{schema_name}")
      :ok
    end
  end
end
