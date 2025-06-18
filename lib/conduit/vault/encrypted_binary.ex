defmodule Conduit.Vault.EncryptedBinary do
  @moduledoc false
  use Cloak.Ecto.Binary, vault: Conduit.Vault
end
