WITH transaction_totals AS (

/* ----------------- INVOICES AS A/R ----------------- */
SELECT
    'Accounts Receivable' AS source_type,
    i.id AS source_id,
    i.txn_date::timestamp AS txn_date,
    i.customer_value AS customer_id,
    i.total_amt AS amount,
    'Accounts Receivable' AS description,
    '84' AS account_id,
    'Accounts Receivable (A/R)' AS account_name
FROM patrick_sandbox.invoice i
WHERE i.total_amt IS NOT NULL

/* ----------------- PAYMENTS ----------------- */
UNION ALL
SELECT
    'Payment' AS source_type,
    p.id AS source_id,
    p.txn_date::timestamp AS txn_date,
    p.customer_value AS customer_id,
    p.total_amt AS amount,
    'Customer Payment' AS description,
    COALESCE(p.deposit_to_account_value, '52') AS account_id,
    COALESCE(p.deposit_to_account_name, 'Undeposited Funds') AS account_name
FROM patrick_sandbox.payment p
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
    'Credit Memo' AS description,
    '84' AS account_id,
    'Accounts Receivable (A/R)' AS account_name
FROM patrick_sandbox.creditmemo cm,
     unnest(cm.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN ('SalesItemLineDetail','DiscountLineDetail','TaxLineDetail')
GROUP BY cm.id, cm.txn_date, cm.customer_value

/* ----------------- BILLS ----------------- */
UNION ALL
SELECT
    'Bill' AS source_type,
    b.id AS source_id,
    b.txn_date::timestamp AS txn_date,
    NULL::text AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Bill' AS description,
    '33' AS account_id,
    'Accounts Payable (A/P)' AS account_name
FROM patrick_sandbox.bill b,
     unnest(b.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN ('AccountBasedExpenseLineDetail','ItemBasedExpenseLineDetail')
GROUP BY b.id, b.txn_date

/* ----------------- BILL PAYMENTS ----------------- */
UNION ALL
SELECT
    'Bill Payment' AS source_type,
    bp.id AS source_id,
    bp.txn_date::timestamp AS txn_date,
    NULL::text AS customer_id,
    CASE
        WHEN bp.pay_type = 'CreditCard' THEN -1 * bp.total_amt
        ELSE bp.total_amt
    END AS amount,
    'Bill Payment' AS description,
    CASE
        WHEN bp.pay_type = 'Check' THEN '35'
        WHEN bp.pay_type = 'CreditCard' THEN '41'
        ELSE '33'
    END AS account_id,
    CASE
        WHEN bp.pay_type = 'Check' THEN 'Checking'
        WHEN bp.pay_type = 'CreditCard' THEN 'Mastercard'
        ELSE 'Accounts Payable (A/P)'
    END AS account_name
FROM patrick_sandbox.billpayment bp
WHERE bp.total_amt IS NOT NULL

/* ----------------- EXPENSES ----------------- */
UNION ALL
SELECT
    'Expense' AS source_type,
    p.id AS source_id,
    p.txn_date::timestamp AS txn_date,
    NULL::text AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Expense' AS description,
    COALESCE(
        (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'value',
        (raw_line::json)->'ItemBasedExpenseLineDetail'->'AccountRef'->>'value',
        (raw_line::json)->'CheckDetail'->'AccountRef'->>'value',
        '35'
    ) AS account_id,
    COALESCE(
        (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name',
        (raw_line::json)->'ItemBasedExpenseLineDetail'->'AccountRef'->>'name',
        (raw_line::json)->'CheckDetail'->'AccountRef'->>'name',
        'Checking'
    ) AS account_name
FROM patrick_sandbox.purchase p,
     unnest(p.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN
      ('AccountBasedExpenseLineDetail','ItemBasedExpenseLineDetail','CheckDetail')
GROUP BY
    p.id,
    p.txn_date,
    COALESCE(
        (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'value',
        (raw_line::json)->'ItemBasedExpenseLineDetail'->'AccountRef'->>'value',
        (raw_line::json)->'CheckDetail'->'AccountRef'->>'value',
        '35'
    ),
    COALESCE(
        (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name',
        (raw_line::json)->'ItemBasedExpenseLineDetail'->'AccountRef'->>'name',
        (raw_line::json)->'CheckDetail'->'AccountRef'->>'name',
        'Checking'
    )

/* ----------------- DEPOSITS ----------------- */
UNION ALL
SELECT
    'Deposit' AS source_type,
    d.id AS source_id,
    d.txn_date::timestamp AS txn_date,
    NULL::text AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Deposit Total' AS description,
    COALESCE(
        (raw_line::json)->'DepositLineDetail'->'AccountRef'->>'value',
        '52'
    ) AS account_id,
    COALESCE(
        (raw_line::json)->'DepositLineDetail'->'AccountRef'->>'name',
        'Undeposited Funds'
    ) AS account_name
FROM patrick_sandbox.deposit d,
     unnest(d.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' = 'DepositLineDetail'
GROUP BY
    d.id,
    d.txn_date,
    COALESCE(
        (raw_line::json)->'DepositLineDetail'->'AccountRef'->>'value',
        '52'
    ),
    COALESCE(
        (raw_line::json)->'DepositLineDetail'->'AccountRef'->>'name',
        'Undeposited Funds'
    )

/* ----------------- SALES RECEIPTS ----------------- */
UNION ALL
SELECT
    'Sales Receipt' AS source_type,
    sr.id AS source_id,
    sr.txn_date::timestamp AS txn_date,
    sr.customer_value AS customer_id,
    sr.total_amt AS amount,
    'Sales Receipt' AS description,
    COALESCE(
        (sr.line[1]->'SalesItemLineDetail'->'ItemAccountRef'->>'value')::text,
        '84'
    ) AS account_id,
    COALESCE(
        (sr.line[1]->'SalesItemLineDetail'->'ItemAccountRef'->>'name')::text,
        'Accounts Receivable (A/R)'
    ) AS account_name
FROM patrick_sandbox.salesreceipt sr
WHERE sr.total_amt IS NOT NULL

/* ----------------- REFUND RECEIPTS ----------------- */
UNION ALL
SELECT
    'Refund Receipt' AS source_type,
    rr.id AS source_id,
    rr.txn_date::timestamp AS txn_date,
    rr.customer_value AS customer_id,
    SUM(((raw_line::json)->>'Amount')::numeric) AS amount,
    'Refund Receipt' AS description,
    '84' AS account_id,
    'Accounts Receivable (A/R)' AS account_name
FROM patrick_sandbox.refundreceipt rr,
     unnest(rr.line) AS raw_line
WHERE (raw_line::json)->>'DetailType' IN ('SalesItemLineDetail','DiscountLineDetail','TaxLineDetail')
GROUP BY
    rr.id,
    rr.txn_date,
    rr.customer_value
)

SELECT
    source_type,
    source_id,
    txn_date,
    customer_id,
    CASE
        WHEN source_type IN ('Credit Memo','Refund Receipt','Bill Payment') THEN -1 * amount
        ELSE amount
    END AS amount,
    description,
    account_id,
    account_name
FROM transaction_totals
ORDER BY txn_date, source_type, source_id
LIMIT 1048575;
