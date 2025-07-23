defmodule Conduit.Repo.Migrations.AddItemPatrickSandbox do
  use Ecto.Migration

  Conduit.Repo.create_schema_if_absent("patrick_sandbox")

  def change do
    create table("item", prefix: "patrick_sandbox", primary_key: false) do
      add :item_category_type, :string
      add :name, :string
      add :sync_token, :string
      add :inv_start_date, :date
      add :type, :string
      add :qty_on_hand, :decimal
      add :asset_account_name, :string, comment: "the human friendly asset_account name."
      add :asset_account_value, :string, comment: "the id of the associated asset_account entry"
      add :sku, :string
      add :sales_tax_included, :boolean
      add :track_qty_on_hand, :boolean
      add :sales_tax_code_name, :string, comment: "the human friendly sales_tax_code name."
      add :sales_tax_code_value, :string, comment: "the id of the associated sales_tax_code entry"
      add :class_name, :string, comment: "the human friendly class name."
      add :class_value, :string, comment: "the id of the associated class entry"
      add :source, :string
      add :purchase_tax_included, :boolean
      add :description, :string
      add :abatement_rate, :decimal
      add :sub_item, :boolean
      add :taxable, :boolean
      add :uqc_display_text, :string
      add :reorder_point, :decimal
      add :purchase_desc, :string
      add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
      add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
      add :pref_vendor_name, :string, comment: "the human friendly pref_vendor name."
      add :pref_vendor_value, :string, comment: "the id of the associated pref_vendor entry"
      add :active, :boolean
      add :uqc_id, :string
      add :reverse_charge_rate, :decimal
      add :purchase_tax_code_name, :string, comment: "the human friendly purchase_tax_code name."

      add :purchase_tax_code_value, :string,
        comment: "the id of the associated purchase_tax_code entry"

      add :service_type, :string
      add :purchase_cost, :decimal
      add :parent_name, :string, comment: "the human friendly parent name."
      add :parent_value, :string, comment: "the id of the associated parent entry"
      add :unit_price, :decimal
      add :fully_qualified_name, :string
      add :expense_account_name, :string, comment: "the human friendly expense_account name."

      add :expense_account_value, :string,
        comment: "the id of the associated expense_account entry"

      add :income_account_name, :string, comment: "the human friendly income_account name."
      add :income_account_value, :string, comment: "the id of the associated income_account entry"

      add :tax_classification_name, :string,
        comment: "the human friendly tax_classification name."

      add :tax_classification_value, :string,
        comment: "the id of the associated tax_classification entry"

      timestamps()
    end
  end
end
