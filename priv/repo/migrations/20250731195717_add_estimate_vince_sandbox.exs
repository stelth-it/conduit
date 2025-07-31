
defmodule Conduit.Repo.Migrations.AddEstimateVinceSandbox do
  use Ecto.Migration
  
  Conduit.Repo.create_schema_if_absent("vince_sandbox")

  def change do
    create table("estimate", prefix: "vince_sandbox", primary_key: false) do
    add :id, :string, primary_key: true
add :customer_name, :string, comment: "the human friendly customer name."
add :customer_value, :string, comment: "the id of the associated customer entry"
add :sync_token, :string
add :ship_from_addr, :map
add :currency_name, :string, comment: "the human friendly currency name."
add :currency_value, :string, comment: "the id of the currency"
add :global_tax_calculation, :string
add :project_name, :string, comment: "the human friendly project name."
add :project_value, :string, comment: "the id of the associated project entry"
add :txn_date, :date
add :ship_date, :date
add :class_name, :string, comment: "the human friendly class name."
add :class_value, :string, comment: "the id of the associated class entry"
add :print_status, :string
add :sales_term_name, :string, comment: "the human friendly sales_term name."
add :sales_term_value, :string, comment: "the id of the associated sales_term entry"
add :txn_status, :string
add :linked_txn, {:array, :map}
add :accepted_date, :date
add :expiration_date, :date
add :transaction_location_type, :string
add :due_date, :date
add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
add :doc_number, :string
add :private_note, :string
add :line, {:array, :map}
add :email_status, :string
add :accepted_by, :string
add :exchange_rate, :decimal
add :ship_addr, :map
add :department_name, :string, comment: "the human friendly department name."
add :department_value, :string, comment: "the id of the associated department entry"
add :ship_method_name, :string, comment: "the human friendly ship_method name."
add :ship_method_value, :string, comment: "the id of the associated ship_method entry"
add :bill_addr, :map
add :apply_tax_after_discount, :boolean
add :total_amt, :decimal
add :recur_data_name, :string, comment: "the human friendly recur_data name."
add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
add :tax_exemption_name, :string, comment: "the human friendly tax_exemption name."
add :tax_exemption_value, :string, comment: "the id of the associated tax_exemption entry"
add :home_total_amt, :decimal
add :free_form_address, :boolean
    timestamps()
    end
  end
end
