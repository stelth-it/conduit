defmodule Sage.Repo.Migrations.AddGlbatch do
  use Ecto.Migration

  def up do
    create table("GLBATCH", primary_key: false) do
      add(:pg_id, :serial, primary_key: true, auto_increment: true)

      add(:RECORDNO, :text)

      add(:BATCHNO, :integer)

      add(:BATCH_TITLE, :text)

      add(:BALANCE, :float)

      add(:JOURNAL, :text)

      add(:BATCH_DATE, :naive_datetime)

      add(:MODULE, :text)

      add(:USERKEY, :integer)

      add(:REFERENCENO, :text)

      add(:REVERSED, :naive_datetime)

      add(:REVERSEDKEY, :integer)

      add(:REVERSEDFROM, :text)

      add(:TEMPLATEKEY, :integer)

      add(:PRBATCHKEY, :integer)

      add(:MODIFIED, :naive_datetime)

      add(:MODIFIEDBYID, :text)

      add(:SCHOPKEY, :integer)

      add(:GLACCTALLOCATIONRUNKEY, :integer)

      add(:BASELOCATION, :text)

      add(:BASELOCATION_NO, :text)

      add(:"USERINFO.LOGINID", :text)

      add(:WHENCREATED, :naive_datetime)

      add(:WHENMODIFIED, :naive_datetime)

      add(:CREATEDBY, :integer)

      add(:MODIFIEDBY, :integer)

      add(:STATE, :text)

      add(:JOURNALSEQNO, :text)

      add(:TAXIMPLICATIONS, :text)

      add(:VATVENDORID, :text)

      add(:VATCUSTOMERID, :text)

      add(:VATCONTACTID, :text)

      add(:TAXSOLUTIONID, :text)

      add(:SUPDOCID, :text)

      add(:SUPDOCKEY, :integer)

      add(:MEGAENTITYKEY, :integer)

      add(:MEGAENTITYID, :text)

      add(:MEGAENTITYNAME, :text)

      add(:SALESFORCE_ERROR_MESSAGE, :text)

      add(:SALESFORCE_JOB_URL, :text)

      add(:SALESFORCE_RECORD_ID, :text)

      add(:SALESFORCE_RECORD_URL, :text)

      add(:SALESFORCE_SYNC_STATUS, :text)

      add(:SALESFORCE_TIMESTAMP, :text)

      add(:REVISED_TICKET, :text)

      add(:TICKET_COMPLETE_DATE, :naive_datetime)

      add(:RECORD_URL, :text)

      add(:Rasset, :text)

      add(:Rdepreciation_schedule, :text)

      add(:Rasset_adjustment, :text)

      add(:Rasset_class, :text)

      add(:RassetOutOfService, :text)

      add(:RassetTransfer, :text)

      add(:Rcip_asset, :text)

      add(:Rcip, :text)

      timestamps(
        inserted_at: :pg_inserted_at,
        updated_at: :pg_updated_at
      )
    end
  end

  def down do
    drop(table("GLBATCH"))
  end
end
