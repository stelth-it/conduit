
defmodule Conduit.Repo.Migrations.AddTimeactivityVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("timeactivity", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :name_of, :string
add :sync_token, :string
add :txn_date, :date
add :vendor_name, :string, comment: "the human friendly vendor name."
add :vendor_value, :string, comment: "the id of the associated vendor entry"
add :project_name, :string, comment: "the human friendly project name."
add :project_value, :string, comment: "the id of the associated project entry"
add :hourly_rate, :decimal
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :employee_name, :string, comment: "the human friendly employee name."
add :employee_value, :string, comment: "the id of the associated employee entry"
add :class_name, :string, comment: "the human friendly class name."
add :class_value, :string, comment: "the id of the associated class entry"
add :description, :string
add :taxable, :boolean
add :transaction_location_type, :string
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :cost_rate, :decimal
add :item_name, :string, comment: "the human friendly item name."
add :item_value, :string, comment: "the id of the associated item entry"
add :payroll_item_name, :string, comment: "the human friendly payroll_item name."
add :payroll_item_value, :string, comment: "the id of the associated payroll_item entry"
add :billable_status, :string
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
    timestamps()
    end
  end
end
