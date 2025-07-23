
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Estimate do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:customer_name,
:customer_value,
:sync_token,
:ship_from_addr,
:currency_name,
:currency_value,
:global_tax_calculation,
:project_name,
:project_value,
:txn_date,
:ship_date,
:class_name,
:class_value,
:print_status,
:sales_term_name,
:sales_term_value,
:txn_status,
:linked_txn,
:accepted_date,
:expiration_date,
:transaction_location_type,
:due_date,
:qb_updated_at,
:qb_inserted_at,
:doc_number,
:private_note,
:line,
:email_status,
:accepted_by,
:exchange_rate,
:ship_addr,
:department_name,
:department_value,
:ship_method_name,
:ship_method_value,
:bill_addr,
:apply_tax_after_discount,
:total_amt,
:recur_data_name,
:recur_data_value,
:tax_exemption_name,
:tax_exemption_value,
:home_total_amt,
:free_form_address]

 @primary_key false
 schema "estimate" do
  field :id, :string, primary_key: true
field :customer_name, :string
field :customer_value, :string
field :sync_token, :string
field :ship_from_addr, :map
field :currency_name, :string
field :currency_value, :string
field :global_tax_calculation, :string
field :project_name, :string
field :project_value, :string
field :txn_date, :date
field :ship_date, :date
field :class_name, :string
field :class_value, :string
field :print_status, :string
field :sales_term_name, :string
field :sales_term_value, :string
field :txn_status, :string
field :linked_txn, {:array, :map}
field :accepted_date, :date
field :expiration_date, :date
field :transaction_location_type, :string
field :due_date, :date
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :doc_number, :string
field :private_note, :string
field :line, {:array, :map}
field :email_status, :string
field :accepted_by, :string
field :exchange_rate, :decimal
field :ship_addr, :map
field :department_name, :string
field :department_value, :string
field :ship_method_name, :string
field :ship_method_value, :string
field :bill_addr, :map
field :apply_tax_after_discount, :boolean
field :total_amt, :decimal
field :recur_data_name, :string
field :recur_data_value, :string
field :tax_exemption_name, :string
field :tax_exemption_value, :string
field :home_total_amt, :decimal
field :free_form_address, :boolean
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
