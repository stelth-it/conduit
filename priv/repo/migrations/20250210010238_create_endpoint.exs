defmodule Sage.Repo.Migrations.CreateEndpoint do
  use Ecto.Migration

  def change do
    create table("endpoints") do
      add :type, :string
      add :web_user, :string
      add :web_user_password, :binary
      add :sender_id, :string
      add :sender_password, :binary
      add :company_id, :string
    end
  end
end
