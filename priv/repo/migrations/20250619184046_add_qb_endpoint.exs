defmodule Conduit.Repo.Migrations.AddQbEndpoint do
  use Ecto.Migration

  def change do
    create table("qb_endpoint") do
      add :type, :string
      add :company_id, :string
      add :token_endpoint, :string
      add :refresh_token, :map
      add :intuit_app, :map
    end

    create unique_index("qb_endpoint", [:company_id, :type])
  end
end
