defmodule Sage.Repo.Migrations.AddRequestLog do
  use Ecto.Migration

  def change do
    create table("request_logs") do
      add :request, :map, comment: "the request"
      add :status, :string, comment: "the status of the request"
      add :endpoint_id, references(:endpoints), comment: "the endpoint the request was submitted to"
      timestamps()
    end
  end
end
