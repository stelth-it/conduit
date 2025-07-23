
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Timeactivity do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:name_of,
:sync_token,
:txn_date,
:vendor_name,
:vendor_value,
:project_name,
:project_value,
:hourly_rate,
:customer_name,
:customer_value,
:employee_name,
:employee_value,
:class_name,
:class_value,
:description,
:taxable,
:transaction_location_type,
:qb_updated_at,
:qb_inserted_at,
:cost_rate,
:item_name,
:item_value,
:payroll_item_name,
:payroll_item_value,
:billable_status,
:department_name,
:department_value]

 @primary_key false
 schema "timeactivity" do
  field :id, :string, primary_key: true
field :name_of, :string
field :sync_token, :string
field :txn_date, :date
field :vendor_name, :string
field :vendor_value, :string
field :project_name, :string
field :project_value, :string
field :hourly_rate, :decimal
field :customer_name, :string
field :customer_value, :string
field :employee_name, :string
field :employee_value, :string
field :class_name, :string
field :class_value, :string
field :description, :string
field :taxable, :boolean
field :transaction_location_type, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :cost_rate, :decimal
field :item_name, :string
field :item_value, :string
field :payroll_item_name, :string
field :payroll_item_value, :string
field :billable_status, :string
field :department_name, :string
field :department_value, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
