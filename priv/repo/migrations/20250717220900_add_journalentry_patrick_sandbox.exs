defmodule Conduit.Repo.Migrations.AddJournalentryPatrickSandbox do
  use Ecto.Migration

  def change do
    create table("journalentry", prefix: "patrick_sandbox", primary_key: false) do
      add :id, :string, primary_key: true
      add :line, {:array, :map}
      add :sync_token, :string
      add :currency_name, :string, comment: "the human friendly currency name."
      add :currency_value, :string, comment: "the id of the currency"
      add :global_tax_calculation, :string
      add :doc_number, :string
      add :private_note, :string
      add :exchange_rate, :decimal
      add :tax_rate_name, :string, comment: "the human friendly tax_rate name."
      add :tax_rate_value, :string, comment: "the id of the associated tax_rate entry"
      add :transaction_location_type, :string
      add :adjustment, :boolean
      add :qb_updated_at, :utc_datetime, comment: "the time the record was last updated in QB"
      add :qb_inserted_at, :utc_datetime, comment: "the time the record was created in QB"
      add :recur_data_name, :string, comment: "the human friendly recur_data name."
      add :recur_data_value, :string, comment: "the id of the associated recur_data entry"
      add :total_amt, :decimal
      add :home_total_amt, :decimal
      add :journal_code_name, :string, comment: "the human friendly journal_code name."
      add :journal_code_value, :string, comment: "the id of the associated journal_code entry"
      timestamps()
    end
  end
end
