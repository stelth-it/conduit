
defmodule Conduit.Quickbooks.Object.PatrickSandbox.Employee do 
 use Ecto.Schema
 import Ecto.Changeset

 @required_fields [:id,
:sync_token,
:primary_addr,
:display_name,
:title,
:billable_time,
:given_name,
:birth_date,
:middle_name,
:ssn,
:active,
:released_date,
:qb_updated_at,
:qb_inserted_at,
:cost_rate,
:gender,
:hired_date,
:bill_rate,
:organization,
:suffix,
:family_name,
:print_on_check_name,
:employee_number,
:v4_id_pseudonym]

 @primary_key false
 schema "employee" do
  field :id, :string, primary_key: true
field :sync_token, :string
field :primary_addr, :map
field :display_name, :string
field :title, :string
field :billable_time, :boolean
field :given_name, :string
field :birth_date, :date
field :middle_name, :string
field :ssn, :string
field :active, :boolean
field :released_date, :date
field :qb_updated_at, :utc_datetime
field :qb_inserted_at, :utc_datetime
field :cost_rate, :decimal
field :gender, :string
field :hired_date, :date
field :bill_rate, :decimal
field :organization, :boolean
field :suffix, :string
field :family_name, :string
field :print_on_check_name, :string
field :employee_number, :string
field :v4_id_pseudonym, :string
  timestamps()
 end

 def changeset(%__MODULE__{} = input, params \\ %{}) do
  input
  |> cast(params, @required_fields)
  |> validate_required([:id])
 end
end
