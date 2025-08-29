WITH invoice_raw AS (
  SELECT
    id AS source_id,
    txn_date,
    customer_value AS customer_id,
    unnest(line) AS raw_line
  FROM patrick_sandbox.invoice
),

invoice_parsed AS (
  SELECT
    'invoice' AS source_type,
    source_id,
    txn_date,
    customer_id,
    (raw_line::json)->>'Description' AS description,
    (raw_line::json)->'SalesItemLineDetail'->'ItemAccountRef'->>'name' AS account_name,
    (raw_line::json)->'SalesItemLineDetail'->'ItemAccountRef'->>'value' AS account_id,
    ((raw_line::json)->>'Amount')::numeric AS amount
  FROM invoice_raw
  WHERE (raw_line::json)->>'DetailType' = 'SalesItemLineDetail'
),

invoice_lines AS (
  SELECT
    source_type,
    source_id,
    txn_date,
    account_id,
    account_name,
    0 AS debit,
    amount AS credit,
    customer_id,
    description
  FROM invoice_parsed
)

SELECT *
FROM invoice_lines
ORDER BY txn_date, source_id
;
