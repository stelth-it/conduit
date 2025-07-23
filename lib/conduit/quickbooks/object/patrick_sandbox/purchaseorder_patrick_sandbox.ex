
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Purchaseorder do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:ap_account_name,
:ap_account_value,
:vendor_name,
:vendor_value,
:line,
:sync_token,
:currency_name,
:currency_value,
:global_tax_calculation,
:txn_date,
:class_name,
:class_value,
:sales_term_name,
:sales_term_value,
:linked_txn,
:memo,
:po_status,
:transaction_location_type,
:due_date,
:qb_updated_at,
:qb_inserted_at,
:doc_number,
:private_note,
:ship_method_name,
:ship_method_value,
:ship_name,
:ship_value,
:exchange_rate,
:ship_addr,
:vendor_addr,
:email_status,
:total_amt,
:recur_data_name,
:recur_data_value]

 @primary_key false
 schema "purchaseorder" do
  field :id, :string, primary_key: true
field :ap_account_name, :string
field :ap_account_value, :string
field :vendor_name, :string
field :vendor_value, :string
field :line, {:array, :map}
field :sync_token, :string
field :currency_name, :string
field :currency_value, :string
field :global_tax_calculation, :string
field :txn_date, :date
field :class_name, :string
field :class_value, :string
field :sales_term_name, :string
field :sales_term_value, :string
field :linked_txn, {:array, :map}
field :memo, :string
field :po_status, :string
field :transaction_location_type, :string
field :due_date, :date
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :doc_number, :string
field :private_note, :string
field :ship_method_name, :string
field :ship_method_value, :string
field :ship_name, :string
field :ship_value, :string
field :exchange_rate, :decimal
field :ship_addr, :map
field :vendor_addr, :map
field :email_status, :string
field :total_amt, :decimal
field :recur_data_name, :string
field :recur_data_value, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
