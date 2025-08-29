WITH transaction_totals AS (

/* ----------------- INVOICES AS A/R ----------------- */
SELECT
    'Accounts Receivable' AS source_type,
    i.id AS source_id,
    i.txn_date::timestamp AS txn_date,
    i.customer_value AS customer_id,
    i.total_amt AS amount,
    'Accounts Receivable' AS description
FROM vince_sandbox.invoice i
WHERE i.total_amt IS NOT NULL
AND i.id NOT IN ('103','92')  -- exclude the phantom records

  /* must have at least one meaningful line */
  AND EXISTS (
        SELECT 1
        FROM unnest(i.line) rl
        WHERE (rl::json)->>'DetailType' IN (
            'SalesItemLineDetail','DiscountLineDetail','SubTotalLineDetail','TaxLineDetail'
        )
  )

/* ----------------- PAYMENTS ----------------- */
UNION ALL
SELECT
    'Payment' AS source_type,
    p.id AS source_id,
    p.txn_date::timestamp AS txn_date,
    p.customer_value AS customer_id,
    p.total_amt AS amount,
    'Customer Payment' AS description
FROM vince_sandbox.payment p
WHERE p.total_amt IS NOT NULL
  AND p.total_amt <> 0

/* ----------------- CREDIT MEMOS ----------------- */
UNION ALL
SELECT
    'Credit Memo' AS source_type,
    cm.id AS source_id,
    cm.txn_date::timestamp AS txn_date,
    cm.customer_value AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Credit Memo' AS description
FROM vince_sandbox.creditmemo cm,
     unnest(cm.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN (
          'SalesItemLineDetail',
          'DiscountLineDetail',
          'TaxLineDetail'
      )
GROUP BY cm.id, cm.txn_date, cm.customer_value

/* ----------------- BILLS ----------------- */
UNION ALL
SELECT
    'Bill' AS source_type,
    b.id AS source_id,
    MAX(b.txn_date)::timestamp AS txn_date,
    NULL::text AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Bill' AS description
FROM vince_sandbox.bill b
     CROSS JOIN LATERAL unnest(b.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN 
      ('AccountBasedExpenseLineDetail','ItemBasedExpenseLineDetail')
GROUP BY b.id

/* ----------------- BILL PAYMENTS ----------------- */
UNION ALL
SELECT
    'Bill Payment' AS source_type,
    bp.id AS source_id,
    bp.txn_date::timestamp AS txn_date,
    NULL::text AS customer_id,
    CASE
        WHEN bp.pay_type = 'CreditCard' 
            THEN -1 * bp.total_amt
        ELSE bp.total_amt
    END AS amount,
    'Bill Payment' AS description
FROM vince_sandbox.billpayment bp
WHERE bp.total_amt IS NOT NULL
  AND bp.total_amt <> 0
  /* require a nonempty line array */
  AND cardinality(bp.line) > 0
  /* require at least one line with a numeric Amount */
  AND EXISTS (
        SELECT 1
        FROM unnest(bp.line) bl
        WHERE NULLIF((bl::json)->>'Amount','') IS NOT NULL
              AND ((bl::json)->>'Amount') ~ '^-?\d+(\.\d+)?$'
  )

/* ----------------- EXPENSES ----------------- */
UNION ALL
SELECT
    'Expense' AS source_type,
    p.id AS source_id,
    MAX(p.txn_date)::timestamp AS txn_date,
    NULL::text AS customer_id,
    CASE
        WHEN p.account_name ILIKE '%Mastercard%' 
             AND SUM(
                 CASE WHEN (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name' ILIKE '%Checking%'
                      THEN ((raw_line::json)->>'Amount')::numeric
                      ELSE 0
                 END
             ) > 0
            THEN -1 * SUM(((raw_line::json)->>'Amount')::numeric)
        WHEN p.account_name ILIKE '%Checking%' 
            THEN -1 * SUM(((raw_line::json)->>'Amount')::numeric)
        WHEN p.account_name ILIKE '%Mastercard%' 
            THEN SUM(((raw_line::json)->>'Amount')::numeric)
        ELSE SUM(((raw_line::json)->>'Amount')::numeric)
    END AS amount,
    'Expense' AS description
FROM vince_sandbox.purchase p
     CROSS JOIN LATERAL unnest(p.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN 
      ('AccountBasedExpenseLineDetail','ItemBasedExpenseLineDetail','CheckDetail')
GROUP BY p.id, p.account_name

/* ----------------- DEPOSITS ----------------- */
UNION ALL
SELECT
    'Deposit' AS source_type,
    d.id AS source_id,
    d.txn_date::timestamp AS txn_date,
    NULL::text AS customer_id,
    d.total_amt AS amount,
    'Deposit Total' AS description
FROM vince_sandbox.deposit d
WHERE d.total_amt IS NOT NULL

/* ----------------- SALES RECEIPTS ----------------- */
UNION ALL
SELECT
    'Sales Receipt' AS source_type,
    sr.id AS source_id,
    sr.txn_date::timestamp AS txn_date,
    sr.customer_value AS customer_id,
    sr.total_amt AS amount,
    'Sales Receipt' AS description
FROM vince_sandbox.salesreceipt sr
WHERE sr.total_amt IS NOT NULL

/* ----------------- REFUND RECEIPTS ----------------- */
UNION ALL
SELECT
    'Refund Receipt' AS source_type,
    rr.id AS source_id,
    rr.txn_date::timestamp AS txn_date,
    rr.customer_value AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Refund Receipt' AS description
FROM vince_sandbox.refundreceipt rr,
     unnest(rr.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN (
          'SalesItemLineDetail',
          'DiscountLineDetail',
          'TaxLineDetail'
      )
GROUP BY rr.id, rr.txn_date, rr.customer_value
)

SELECT
    source_type,
    source_id,
    txn_date,
    customer_id,
    CASE
        WHEN source_type IN ('Credit Memo','Refund Receipt','Bill Payment') 
            THEN -1 * amount
        ELSE amount
    END AS amount,
    description
FROM transaction_totals

UNION ALL

SELECT
    'TOTAL' AS source_type,
    NULL AS source_id,
    NULL AS txn_date,
    NULL AS customer_id,
    SUM(
        CASE
            WHEN source_type IN ('Credit Memo','Refund Receipt','Bill Payment') 
                THEN -1 * amount
            ELSE amount
        END
    ) AS amount,
    'Grand Total' AS description
FROM transaction_totals

ORDER BY txn_date NULLS LAST, source_type, source_id
LIMIT 1048575;

