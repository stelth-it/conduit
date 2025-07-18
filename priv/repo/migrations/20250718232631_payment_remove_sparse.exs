defmodule Conduit.Repo.Migrations.PaymentRemoveSparse do
  use Ecto.Migration

  def change do
    alter table("payment", prefix: "patrick_sandbox", primary_key: false) do
      remove :sparse, :string
    end
  end
end
