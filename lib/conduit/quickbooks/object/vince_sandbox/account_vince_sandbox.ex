
defmodule Conduit.Quickbooks.Object.VinceSandbox.Account do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:name,
:sync_token,
:acct_num,
:currency_name,
:currency_value,
:parent_name,
:parent_value,
:description,
:active,
:qb_updated_at,
:qb_inserted_at,
:sub_account,
:classification,
:fully_qualified_name,
:txn_location_type,
:account_type,
:current_balance_with_sub_accounts,
:account_alias,
:tax_code_name,
:tax_code_value,
:account_sub_type,
:current_balance]

 @primary_key false
 schema "account" do
  field :id, :string, primary_key: true
field :name, :string
field :sync_token, :string
field :acct_num, :string
field :currency_name, :string
field :currency_value, :string
field :parent_name, :string
field :parent_value, :string
field :description, :string
field :active, :boolean
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :sub_account, :boolean
field :classification, :string
field :fully_qualified_name, :string
field :txn_location_type, :string
field :account_type, :string
field :current_balance_with_sub_accounts, :decimal
field :account_alias, :string
field :tax_code_name, :string
field :tax_code_value, :string
field :account_sub_type, :string
field :current_balance, :decimal
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
