WITH payment_ar_raw AS (
  SELECT
    id AS source_id,
    txn_date,
    customer_value AS customer_id,
    unnest(line) AS raw_line
  FROM patrick_sandbox.payment
),

payment_ar_parsed AS (
  SELECT
    'payment_ar' AS source_type,
    source_id,
    txn_date,
    customer_id,
    ((raw_line::json)->>'Amount')::numeric AS amount
  FROM payment_ar_raw
  WHERE (raw_line::json)->>'Amount' IS NOT NULL
),

payment_ar_lines AS (
  SELECT
    source_type,
    source_id,
    txn_date,
    'AR' AS account_id,  -- Replace with real account ID if known
    'Accounts Receivable' AS account_name,
    0 AS debit,
    amount AS credit,
    customer_id,
    'A/R Offset from Payment' AS description
  FROM payment_ar_parsed
)

SELECT *
FROM payment_ar_lines
ORDER BY txn_date, source_id
;
