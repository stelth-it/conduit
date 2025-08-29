WITH journal_raw AS (
  SELECT 
    id AS source_id,
    qb_inserted_at AS txn_date,
    unnest(line) AS raw_line
  FROM patrick_sandbox.journalentry
),

journal_parsed AS (
  SELECT
    'journal' AS source_type,
    source_id,
    txn_date,
    (raw_line::json)->>'Description' AS description,
    (raw_line::json)->'JournalEntryLineDetail'->'AccountRef'->>'name' AS account_name,
    (raw_line::json)->'JournalEntryLineDetail'->'AccountRef'->>'value' AS account_id,
    ((raw_line::json)->>'Amount')::numeric AS amount,
    (raw_line::json)->'JournalEntryLineDetail'->>'PostingType' AS posting_type,
    NULL::text AS customer_id
  FROM journal_raw
),

journal_lines AS (
  SELECT
    source_type,
    source_id,
    txn_date,
    account_id,
    account_name,
    CASE WHEN posting_type = 'Debit' THEN amount ELSE 0 END AS debit,
    CASE WHEN posting_type = 'Credit' THEN amount ELSE 0 END AS credit,
    customer_id,
    description
  FROM journal_parsed
)

SELECT *
FROM journal_lines
ORDER BY txn_date, source_id;