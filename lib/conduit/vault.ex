defmodule Conduit.Vault.Error do
  defexception [:message]

  def exception(message) do
    %__MODULE__{message: message}
  end
end

defmodule Conduit.Vault do
  use Cloak.Vault, otp_app: :conduit
  @moduledoc false

  @impl true
  def init(config) do
    config =
      Keyword.put(config, :ciphers,
        default: {
          Cloak.Ciphers.AES.GCM,
          tag: "Conduit.AES.V1", key: get_key(), iv_length: 12
        }
      )

    {:ok, config}
  end

  @doc """
  Retrieves the cloak key from onepassword CLI tool.
  Will raise if the tool is not present or if anything
  goes wrong with fetching or decoding the key.
  """
  def get_key do
    with :ok <- check_for_exec(),
         {:ok, path} <- get_op_path("CLOAK_KEY_OP_PATH"),
         {:ok, encoded_key} <- run_op(path),
         {:ok, bin_key} <- decode_key(encoded_key) do
      bin_key
    else
      {:error, message} -> raise __MODULE__.Error, message
    end
  end

  defp decode_key(encoded_key) do
    case Base.decode64(encoded_key) do
      {:ok, v} -> {:ok, v}
      :error -> {:error, "key successfully fetched, but could not be decoded!"}
    end
  end

  defp get_op_path(env_variable) do
    case System.fetch_env(env_variable) do
      {:ok, v} ->
        {:ok, v}

      :error ->
        {:error, "environment variable with name #{env_variable} not found."}
    end
  end

  defp run_op(vault_path) do
    # we want any stderr messages to be included in our exception.
    case System.cmd("op", ["read", vault_path], stderr_to_stdout: true) do
      {key, 0} ->
        # stdout adds a trailing newline
        {:ok, String.trim(key)}

      {message, _} ->
        {:error, "onepassword could not retrieve key.  Error received:\n#{message}"}
    end
  end

  defp check_for_exec do
    if :os.find_executable(~c"op") do
      :ok
    else
      {:error, "onepassword binary not found"}
    end
  end
end
