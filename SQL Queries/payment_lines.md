WITH payment_raw AS (
  SELECT
    id AS source_id,
    txn_date,
    customer_value AS customer_id,
    deposit_to_account_value AS bank_account_id,
    deposit_to_account_name AS bank_account_name,
    unnest(line) AS raw_line
  FROM patrick_sandbox.payment
),

payment_parsed AS (
  SELECT
    'payment' AS source_type,
    source_id,
    txn_date,
    customer_id,
    ((raw_line::json)->>'Amount')::numeric AS amount,
    bank_account_id,
    bank_account_name,
    (raw_line::json)->>'LinkedTxn' AS linked_txn
  FROM payment_raw
),

payment_lines AS (
  SELECT
    source_type,
    source_id,
    txn_date,
    bank_account_id AS account_id,
    bank_account_name AS account_name,
    amount AS debit,
    0 AS credit,
    customer_id,
    'Customer Payment' AS description
  FROM payment_parsed
)

SELECT *
FROM payment_lines
ORDER BY txn_date, source_id
;
