WITH purchase_raw AS (
  SELECT 
    id AS source_id,
    qb_inserted_at AS txn_date,
    unnest(line) AS raw_line
  FROM patrick_sandbox.purchase
),

purchase_parsed AS (
  SELECT
    'purchase' AS source_type,
    source_id,
    txn_date,
    (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name' AS account_name,
    (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'value' AS account_id,
    ((raw_line::json)->>'Amount')::numeric AS amount,
    (raw_line::json)->>'Description' AS description,
    NULL::text AS customer_id
  FROM purchase_raw
),

purchase_lines AS (
  SELECT
    source_type,
    source_id,
    txn_date,
    account_id,
    account_name,
    amount AS debit,
    0 AS credit,
    customer_id,
    description
  FROM purchase_parsed
)

SELECT *
FROM purchase_lines
ORDER BY txn_date, source_id;