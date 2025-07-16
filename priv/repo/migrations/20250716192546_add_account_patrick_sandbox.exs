defmodule Conduit.Repo.Migrations.AddAccountPatrickSandbox do
  use Ecto.Migration

  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("account", prefix: "patrick_sandbox", primary_key: false) do
      add :id, :string, primary_key: true
      add :name, :string
      add :sync_token, :string
      add :acct_num, :string
      add :currency_name, :string, comment: "the human friendly currency name."
      add :currency_value, :string, comment: "the id of the currency"
      add :parent_name, :string, comment: "the human friendly parent name."
      add :parent_value, :string, comment: "the id of the associated parent entry"
      add :description, :string
      add :active, :boolean
      add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
      add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
      add :sub_account, :boolean
      add :classification, :string
      add :fully_qualified_name, :string
      add :txn_location_type, :string
      add :account_type, :string
      add :current_balance_with_sub_accounts, :decimal
      add :account_alias, :string
      add :tax_code_name, :string, comment: "the human friendly tax_code name."
      add :tax_code_value, :string, comment: "the id of the associated tax_code entry"
      add :account_sub_type, :string
      add :current_balance, :decimal
      timestamps()
    end
  end
end
