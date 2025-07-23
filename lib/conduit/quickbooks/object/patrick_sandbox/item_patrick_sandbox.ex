defmodule Conduit.Quickbooks.Object.PatrickSandbox.Item do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :id,
    :item_category_type,
    :name,
    :sync_token,
    :inv_start_date,
    :type,
    :qty_on_hand,
    :asset_account_name,
    :asset_account_value,
    :sku,
    :sales_tax_included,
    :track_qty_on_hand,
    :sales_tax_code_name,
    :sales_tax_code_value,
    :class_name,
    :class_value,
    :source,
    :purchase_tax_included,
    :description,
    :abatement_rate,
    :sub_item,
    :taxable,
    :uqc_display_text,
    :reorder_point,
    :purchase_desc,
    :qb_updated_at,
    :qb_inserted_at,
    :pref_vendor_name,
    :pref_vendor_value,
    :active,
    :uqc_id,
    :reverse_charge_rate,
    :purchase_tax_code_name,
    :purchase_tax_code_value,
    :service_type,
    :purchase_cost,
    :parent_name,
    :parent_value,
    :unit_price,
    :fully_qualified_name,
    :expense_account_name,
    :expense_account_value,
    :income_account_name,
    :income_account_value,
    :tax_classification_name,
    :tax_classification_value
  ]

  @primary_key false
  schema "item" do
    field :id, :string, primary_key: true
    field :item_category_type, :string
    field :name, :string
    field :sync_token, :string
    field :inv_start_date, :date
    field :type, :string
    field :qty_on_hand, :decimal
    field :asset_account_name, :string
    field :asset_account_value, :string
    field :sku, :string
    field :sales_tax_included, :boolean
    field :track_qty_on_hand, :boolean
    field :sales_tax_code_name, :string
    field :sales_tax_code_value, :string
    field :class_name, :string
    field :class_value, :string
    field :source, :string
    field :purchase_tax_included, :boolean
    field :description, :string
    field :abatement_rate, :decimal
    field :sub_item, :boolean
    field :taxable, :boolean
    field :uqc_display_text, :string
    field :reorder_point, :decimal
    field :purchase_desc, :string
    field :qb_updated_at, :utc_datetime
    field :qb_inserted_at, :utc_datetime
    field :pref_vendor_name, :string
    field :pref_vendor_value, :string
    field :active, :boolean
    field :uqc_id, :string
    field :reverse_charge_rate, :decimal
    field :purchase_tax_code_name, :string
    field :purchase_tax_code_value, :string
    field :service_type, :string
    field :purchase_cost, :decimal
    field :parent_name, :string
    field :parent_value, :string
    field :unit_price, :decimal
    field :fully_qualified_name, :string
    field :expense_account_name, :string
    field :expense_account_value, :string
    field :income_account_name, :string
    field :income_account_value, :string
    field :tax_classification_name, :string
    field :tax_classification_value, :string
    timestamps()
  end

  def changeset(%__MODULE__{} = input, params \\ %{}) do
    input
    |> cast(params, @required_fields)
    |> validate_required([:id])
  end
end
