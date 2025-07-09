defmodule Conduit.Repo.Migrations.EndpointAddFriendlyNameField do
  use Ecto.Migration

  def change do
    alter table("qb_endpoint") do
      add :friendly_name, :string
    end

    create unique_index("qb_endpoint", [:friendly_name])
  end
end
