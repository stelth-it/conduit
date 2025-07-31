
defmodule Conduit.Quickbooks.Object.VinceSandbox.Creditcardpayment do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:credit_card_account_name,
:credit_card_account_value,
:amount,
:bank_account_name,
:bank_account_value,
:sync_token,
:private_note,
:vendor_name,
:vendor_value,
:txn_date,
:memo,
:print_status,
:check_num,
:qb_updated_at,
:qb_inserted_at]

 @primary_key false
 schema "creditcardpayment" do
  field :id, :string, primary_key: true
field :credit_card_account_name, :string
field :credit_card_account_value, :string
field :amount, :decimal
field :bank_account_name, :string
field :bank_account_value, :string
field :sync_token, :string
field :private_note, :string
field :vendor_name, :string
field :vendor_value, :string
field :txn_date, :date
field :memo, :string
field :print_status, :string
field :check_num, :string
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
