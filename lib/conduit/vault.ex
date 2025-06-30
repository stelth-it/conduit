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
          tag: "Conduit.AES.V1", key: get_key_from_env("CLOAK_KEY"), iv_length: 12
        }
      )

    {:ok, config}
  end

  def get_key_from_env(key_var_name) do
    value = System.fetch_env!(key_var_name)
    decode_key!(value)
  end

  defp decode_key!(encoded_key) do
    case Base.decode64(encoded_key) do
      {:ok, v} -> v
      :error -> raise __MODULE__.Error, "key successfully fetched, but could not be decoded!"
    end
  end
end
