
defmodule Conduit.Repo.Migrations.AddEmployeeVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("employee", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :sync_token, :string
add :primary_addr, :map
add :display_name, :string
add :title, :string
add :billable_time, :boolean
add :given_name, :string
add :birth_date, :date
add :middle_name, :string
add :ssn, :string
add :active, :boolean
add :released_date, :date
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :cost_rate, :decimal
add :gender, :string
add :hired_date, :date
add :bill_rate, :decimal
add :organization, :boolean
add :suffix, :string
add :family_name, :string
add :print_on_check_name, :string
add :employee_number, :string
add :v4_id_pseudonym, :string
    timestamps()
    end
  end
end
