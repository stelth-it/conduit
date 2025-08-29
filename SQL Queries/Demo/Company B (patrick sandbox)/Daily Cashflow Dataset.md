WITH full_transaction_list AS (
  /* ===== Your existing transaction list query, unchanged ===== */
  SELECT
    "source"."source_type" AS "source_type",
    "source"."source_id" AS "source_id",
    "source"."txn_date" AS "txn_date",
    "source"."customer_id" AS "customer_id",
    "source"."amount" AS "amount",
    "source"."description" AS "description",
    "source"."account_id" AS "account_id",
    "source"."account_name" AS "account_name"
  FROM
    (
      WITH transaction_totals AS (
        /* INVOICES AS A/R */
        SELECT
          'Accounts Receivable' AS source_type,
          i.id AS source_id,
          i.txn_date::timestamp AS txn_date,
          i.customer_value AS customer_id,
          i.total_amt AS amount,
          COALESCE(
            NULLIF((
              SELECT string_agg(
                       COALESCE(
                         (rl::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                         (rl::json)->>'Description'
                       ),
                       ', '
                       ORDER BY COALESCE(
                         (rl::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                         (rl::json)->>'Description'
                       )
                     )
              FROM unnest(i.line) rl
              WHERE (rl::json)->>'DetailType' IN ('SalesItemLineDetail','DiscountLineDetail','SubTotalLineDetail')
            ), ''),
            'Invoice #' || i.id::text
          ) AS description,
          '84'::text AS account_id,
          'Accounts Receivable (A/R)' AS account_name
        FROM patrick_sandbox.invoice i
        WHERE i.total_amt IS NOT NULL

        UNION ALL
        /* PAYMENTS */
        SELECT
          'Payment',
          p.id,
          p.txn_date::timestamp,
          p.customer_value,
          p.total_amt,
          ('Payment to ' || COALESCE(p.deposit_to_account_name,'Undeposited Funds') || ' from ' || COALESCE(p.customer_value::text,'Customer'))::text,
          COALESCE(p.deposit_to_account_value::text,'52'),
          COALESCE(p.deposit_to_account_name,'Undeposited Funds')
        FROM patrick_sandbox.payment p
        WHERE p.total_amt IS NOT NULL AND p.total_amt <> 0

        UNION ALL
        /* CREDIT MEMOS */
        SELECT
          'Credit Memo',
          cm.id,
          cm.txn_date::timestamp,
          cm.customer_value,
          SUM(((raw_line::json)->>'Amount')::numeric),
          COALESCE(
            NULLIF(
              string_agg(
                COALESCE(
                  (raw_line::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                  (raw_line::json)->>'Description'
                ), ', '
                ORDER BY COALESCE(
                  (raw_line::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                  (raw_line::json)->>'Description'
                )
              ), ''
            ),
            'Credit Memo #' || cm.id::text
          ),
          '84'::text,
          'Accounts Receivable (A/R)'
        FROM patrick_sandbox.creditmemo cm, unnest(cm.line) AS raw_line
        WHERE (raw_line::json)->>'DetailType' IN ('SalesItemLineDetail','DiscountLineDetail','TaxLineDetail')
        GROUP BY cm.id, cm.txn_date, cm.customer_value

        UNION ALL
        /* BILLS */
        SELECT
          'Bill',
          b.id,
          b.txn_date::timestamp,
          NULL::text,
          SUM(((raw_line::json)->>'Amount')::numeric),
          COALESCE(
            NULLIF(
              string_agg(
                COALESCE(
                  (raw_line::json)->>'Description',
                  (raw_line::json)->'ItemBasedExpenseLineDetail'->'ItemRef'->>'name',
                  (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name'
                ), ', '
                ORDER BY COALESCE(
                  (raw_line::json)->>'Description',
                  (raw_line::json)->'ItemBasedExpenseLineDetail'->'ItemRef'->>'name',
                  (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name'
                )
              ), ''
            ),
            'Bill #' || b.id::text
          ),
          '33'::text,
          'Accounts Payable (A/P)'
        FROM patrick_sandbox.bill b, unnest(b.line) AS raw_line
        WHERE (raw_line::json)->>'DetailType' IN ('AccountBasedExpenseLineDetail','ItemBasedExpenseLineDetail')
        GROUP BY b.id, b.txn_date

        UNION ALL
        /* BILL PAYMENTS */
        SELECT
          'Bill Payment',
          bp.id,
          bp.txn_date::timestamp,
          NULL::text,
          CASE WHEN bp.pay_type = 'CreditCard' THEN -1 * bp.total_amt ELSE bp.total_amt END,
          ('Bill Payment to ' || COALESCE(bp.vendor_name,'Vendor') || ' via ' || COALESCE(bp.pay_type,'Unknown'))::text,
          CASE WHEN bp.pay_type = 'Check' THEN '35'
               WHEN bp.pay_type = 'CreditCard' THEN '41'
               ELSE '33' END::text,
          CASE WHEN bp.pay_type = 'Check' THEN 'Checking'
               WHEN bp.pay_type = 'CreditCard' THEN 'Mastercard'
               ELSE 'Accounts Payable (A/P)' END
        FROM patrick_sandbox.billpayment bp
        WHERE bp.total_amt IS NOT NULL

        UNION ALL
        /* EXPENSES (PURCHASES) */
        SELECT
          'Expense',
          p.id,
          p.txn_date::timestamp,
          NULL::text,
          SUM(((raw_line::json)->>'Amount')::numeric),
          COALESCE(NULLIF(string_agg((raw_line::json)->>'name', ', ' ORDER BY (raw_line::json)->>'name'), ''), 'Expense')::text,
          COALESCE(
            (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'value',
            (raw_line::json)->'ItemBasedExpenseLineDetail'->'AccountRef'->>'value',
            (raw_line::json)->'CheckDetail'->'AccountRef'->>'value',
            '35'
          )::text,
          COALESCE(
            (raw_line::json)->'AccountBasedExpenseLineDetail'->'AccountRef'->>'name',
            (raw_line::json)->'ItemBasedExpenseLineDetail'->'AccountRef'->>'name',
            (raw_line::json)->'CheckDetail'->'AccountRef'->>'name',
            'Checking'
          )
        FROM patrick_sandbox.purchase p, unnest(p.line) AS raw_line
        WHERE (raw_line::json)->>'DetailType' IN ('AccountBasedExpenseLineDetail','ItemBasedExpenseLineDetail','CheckDetail')
        GROUP BY
          p.id, p.txn_date,
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

        UNION ALL
        /* DEPOSITS */
        SELECT
          'Deposit',
          d.id,
          d.txn_date::timestamp,
          NULL::text,
          SUM(((raw_line::json)->>'Amount')::numeric),
          (
            'Deposit to ' || COALESCE((raw_line::json)->'DepositLineDetail'->'AccountRef'->>'name','Undeposited Funds')
            || COALESCE(' from ' || NULLIF(
              string_agg((raw_line::json)->'DepositLineDetail'->'Entity'->>'name', ', ' ORDER BY (raw_line::json)->'DepositLineDetail'->'Entity'->>'name'), ''), ''
            )
          )::text,
          COALESCE((raw_line::json)->'DepositLineDetail'->'AccountRef'->>'value','52')::text,
          COALESCE((raw_line::json)->'DepositLineDetail'->'AccountRef'->>'name','Undeposited Funds')
        FROM patrick_sandbox.deposit d, unnest(d.line) AS raw_line
        WHERE (raw_line::json)->>'DetailType' = 'DepositLineDetail'
        GROUP BY
          d.id, d.txn_date,
          COALESCE((raw_line::json)->'DepositLineDetail'->'AccountRef'->>'value','52'),
          COALESCE((raw_line::json)->'DepositLineDetail'->'AccountRef'->>'name','Undeposited Funds')

        UNION ALL
        /* SALES RECEIPTS */
        SELECT
          'Sales Receipt',
          sr.id,
          sr.txn_date::timestamp,
          sr.customer_value,
          sr.total_amt,
          COALESCE(
            NULLIF((
              SELECT string_agg(
                       COALESCE(
                         (rl::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                         (rl::json)->>'Description'
                       ),
                       ', '
                       ORDER BY COALESCE(
                         (rl::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                         (rl::json)->>'Description'
                       )
                     )
              FROM unnest(sr.line) rl
              WHERE (rl::json)->>'DetailType' IN ('SalesItemLineDetail','DiscountLineDetail','SubTotalLineDetail')
            ), ''),
            'Sales Receipt #' || sr.id::text
          ),
          COALESCE((sr.line[1]->'SalesItemLineDetail'->'ItemAccountRef'->>'value')::text, '84'),
          COALESCE((sr.line[1]->'SalesItemLineDetail'->'ItemAccountRef'->>'name')::text, 'Accounts Receivable (A/R)')
        FROM patrick_sandbox.salesreceipt sr
        WHERE sr.total_amt IS NOT NULL

        UNION ALL
        /* REFUND RECEIPTS */
        SELECT
          'Refund Receipt',
          rr.id,
          rr.txn_date::timestamp,
          rr.customer_value,
          SUM(((raw_line::json)->>'Amount')::numeric),
          COALESCE(
            NULLIF(
              string_agg(
                COALESCE(
                  (raw_line::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                  (raw_line::json)->>'Description'
                ), ', '
                ORDER BY COALESCE(
                  (raw_line::json)->'SalesItemLineDetail'->'ItemRef'->>'name',
                  (raw_line::json)->>'Description'
                )
              ), ''
            ),
            'Refund Receipt #' || rr.id::text
          ),
          '84'::text,
          'Accounts Receivable (A/R)'
        FROM patrick_sandbox.refundreceipt rr, unnest(rr.line) AS raw_line
        WHERE (raw_line::json)->>'DetailType' IN ('SalesItemLineDetail','DiscountLineDetail','TaxLineDetail')
        GROUP BY rr.id, rr.txn_date, rr.customer_value
      ),
      adjusted_transactions AS (
        SELECT
          source_type,
          source_id,
          txn_date,
          customer_id,
          CASE WHEN source_type IN ('Credit Memo','Refund Receipt','Bill Payment') THEN -1 * amount ELSE amount END AS amount,
          description,
          account_id,
          account_name
        FROM transaction_totals
      ),
      unioned AS (
        SELECT source_type, source_id, txn_date, customer_id, amount, description, account_id, account_name
        FROM adjusted_transactions
        UNION ALL
        SELECT 'TOTAL', NULL::text, NULL::timestamp, NULL::text, SUM(amount), 'Grand Total', NULL::text, NULL::text
        FROM adjusted_transactions
      )
      SELECT source_type, source_id, txn_date, customer_id, amount, description, account_id, account_name
      FROM unioned
      ORDER BY
        CASE WHEN source_type = 'TOTAL' THEN 1 ELSE 0 END,
        txn_date NULLS LAST, source_type, source_id NULLS LAST
      LIMIT 1048575
    ) AS source
  LIMIT 1048575
),
transactions AS (
  SELECT
    txn_date::date AS day,
    amount,
    source_type,
    account_id,
    account_name
  FROM full_transaction_list
  WHERE source_type <> 'TOTAL'
),
cash_accounts AS (
  SELECT id::text AS account_id
  FROM patrick_sandbox.account
  WHERE lower(account_type) = 'bank'
),
bank_txns AS (
  SELECT day, amount, source_type
  FROM transactions
  WHERE account_id IN (SELECT account_id FROM cash_accounts)
),
daily_net AS (
  SELECT day, SUM(amount) AS daily_change
  FROM bank_txns
  GROUP BY day
),
date_span AS (
  SELECT MIN(day) AS start_day, MAX(day) AS end_day
  FROM bank_txns
),
calendar AS (
  SELECT generate_series((SELECT start_day FROM date_span), (SELECT end_day FROM date_span), interval '1 day')::date AS day
),
daily_filled AS (
  SELECT c.day, COALESCE(dn.daily_change, 0) AS daily_change
  FROM calendar c
  LEFT JOIN daily_net dn USING (day)
)
SELECT
  day,
  daily_change AS net_cash_flow,
  SUM(daily_change) OVER (ORDER BY day ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_cash_balance
FROM daily_filled
ORDER BY day;
