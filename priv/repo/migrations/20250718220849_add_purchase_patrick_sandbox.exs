defmodule Conduit.Repo.Migrations.AddPurchasePatrickSandbox do
  use Ecto.Migration

  def change do
    create table("purchase", prefix: "patrick_sandbox", primary_key: false) do
      add :id, :string, primary_key: true
      add :line, {:array, :map}
      add :payment_type, :string
      add :account_name, :string, comment: "the human friendly account name."
      add :account_value, :string, comment: "the id of the associated account entry"
      add :sync_token, :string
      add :currency_name, :string, comment: "the human friendly currency name."
      add :currency_value, :string, comment: "the id of the currency"
      add :txn_date, :date
      add :print_status, :string
      add :remit_to_addr, :map
      add :txn_source, :string
      add :linked_txn, {:array, :map}
      add :global_tax_calculation, :string
      add :transaction_location_type, :string
      add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
      add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
      add :doc_number, :string
      add :private_note, :string
      add :credit, :boolean
      add :payment_method_name, :string, comment: "the human friendly payment_method name."
      add :payment_method_value, :string, comment: "the id of the associated payment_method entry"
      add :exchange_rate, :decimal
      add :department_name, :string, comment: "the human friendly department name."
      add :department_value, :string, comment: "the id of the associated department entry"
      add :include_in_annual_tpar, :boolean
      add :total_amt, :decimal
      add :recur_data_name, :string, comment: "the human friendly recur_data name."
      add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
      timestamps()
    end
  end
end
