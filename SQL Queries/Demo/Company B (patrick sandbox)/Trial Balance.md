SELECT
  "source"."account_name" AS "account_name",
  "source"."debit" AS "debit",
  "source"."credit" AS "credit"
FROM
  (
    WITH base_accounts AS (
      SELECT
        a.id :: text AS account_id,
        NULLIF(TRIM(COALESCE(a.fully_qualified_name, a.name)), '') AS account_name
      FROM
        patrick_sandbox.account a
    ),
    /* ----- pick concrete accounts (then supply safe fallbacks) ----- */
    discount_pick AS (
      SELECT
        id :: text AS account_id
      FROM
        patrick_sandbox.account
     
WHERE
        lower(name) = 'discounts given'
       
    OR lower(name) LIKE 'discounts%given%'
     
ORDER BY
        id
     
LIMIT
        1
    ), income_sales_pick AS (
      SELECT
        id :: text AS account_id
      FROM
        patrick_sandbox.account
      WHERE
        lower(name) LIKE 'sales of product income%'
        OR lower(name) = 'sales of product income'
      ORDER BY
        id
      LIMIT
        1
    ), sales_tax_pick AS (
      SELECT
        id :: text AS account_id
      FROM
        patrick_sandbox.account
      WHERE
        name ILIKE '%Board of Equalization Payable%'
        OR name ILIKE '%Sales Tax Payable%'
        OR name ILIKE '%Arizona Dept.%Revenue%Payable%'
        OR account_sub_type ILIKE '%SalesTaxPayable%'
      ORDER BY
        CASE
          WHEN name ILIKE '%Board of Equalization Payable%' THEN 1
          WHEN name ILIKE '%Sales Tax Payable%' THEN 2
          WHEN name ILIKE '%Arizona Dept.%Revenue%Payable%' THEN 3
          ELSE 9
        END,
        id
      LIMIT
        1
    ), ids AS (
      SELECT
        COALESCE(
          (
            SELECT
              account_id
            FROM
              discount_pick
          ),
          'DISC_FALLBACK'
        ) AS disc_id,
        COALESCE(
          (
            SELECT
              account_id
            FROM
              income_sales_pick
          ),
          'INCOME_FALLBACK'
        ) AS income_id,
        COALESCE(
          (
            SELECT
              account_id
            FROM
              sales_tax_pick
          ),
          'TAX_FALLBACK'
        ) AS tax_id
    ),
    account_dim AS (
      SELECT
        *
      FROM
        base_accounts
      UNION ALL
      SELECT
        'DISC_FALLBACK',
        'Discounts given (default)'
      UNION ALL
      SELECT
        'INCOME_FALLBACK',
        'Sales of Product Income (default)'
      UNION ALL
      SELECT
        'TAX_FALLBACK',
        'Sales Tax Payable (default)'
    ),
    /* -------------------- derive per-document tax amounts -------------------- */
    inv_sum AS (
      SELECT
        i.id :: text AS doc_id,
        i.total_amt :: numeric AS total_amt,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS items,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'DiscountLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS discounts,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'ShippingLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS shipping,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'TaxLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS tax_lines
      FROM
        patrick_sandbox.invoice i
       
LEFT JOIN LATERAL unnest(i.line) rl ON TRUE
     
GROUP BY
        i.id,
        i.total_amt
    ),
    cm_sum AS (
      SELECT
        cm.id :: text AS doc_id,
        cm.total_amt :: numeric AS total_amt,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS items,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'DiscountLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS discounts,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'ShippingLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS shipping,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'TaxLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS tax_lines
      FROM
        patrick_sandbox.creditmemo cm
        LEFT JOIN LATERAL unnest(cm.line) rl ON TRUE
      GROUP BY
        cm.id,
        cm.total_amt
    ),
    sr_sum AS (
      SELECT
        sr.id :: text AS doc_id,
        sr.total_amt :: numeric AS total_amt,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS items,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'DiscountLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS discounts,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'ShippingLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS shipping,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'TaxLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS tax_lines
      FROM
        patrick_sandbox.salesreceipt sr
        LEFT JOIN LATERAL unnest(sr.line) rl ON TRUE
      GROUP BY
        sr.id,
        sr.total_amt
    ),
    rr_sum AS (
      SELECT
        rr.id :: text AS doc_id,
        rr.total_amt :: numeric AS total_amt,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS items,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'DiscountLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS discounts,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'ShippingLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS shipping,
        COALESCE(
          SUM(
            CASE
              WHEN (rl :: json) ->> 'DetailType' = 'TaxLineDetail' THEN ((rl :: json) ->> 'Amount') :: numeric
              ELSE 0
            END
          ),
          0
        ) AS tax_lines
      FROM
        patrick_sandbox.refundreceipt rr
        LEFT JOIN LATERAL unnest(rr.line) rl ON TRUE
      GROUP BY
        rr.id,
        rr.total_amt
    ),
    /* ======================= DOUBLE-ENTRY GENERAL LEDGER ======================= */
    gl AS (
      /* INVOICES */
      -- revenue credit (fallback if ItemAccountRef missing)
      SELECT
        COALESCE(
          (rl :: json) -> 'SalesItemLineDetail' -> 'ItemAccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text AS account_id,
        - ((rl :: json) ->> 'Amount') :: numeric AS amount_signed
      FROM
        patrick_sandbox.invoice i,
        unnest(i.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail'
      UNION ALL
      -- shipping credit (if present)
      SELECT
        COALESCE(
          (rl :: json) -> 'ShippingLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        - ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.invoice i,
        unnest(i.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'ShippingLineDetail'
      UNION ALL
      -- discounts debit
      SELECT
        COALESCE(
          (rl :: json) -> 'DiscountLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              disc_id
            FROM
              ids
          )
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.invoice i,
        unnest(i.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'DiscountLineDetail'
      UNION ALL
      -- derived sales tax payable credit (only if not ~zero)
      SELECT
        (
          SELECT
            tax_id
          FROM
            ids
        ),
        - ROUND(
          (s.total_amt - (s.items - s.discounts + s.shipping)) :: numeric,
          2
        )
      FROM
        inv_sum s
      WHERE
        ABS(s.total_amt - (s.items - s.discounts + s.shipping)) > 0.005
      UNION ALL
      -- AR debit
      SELECT
        '84' :: text,
        i.total_amt :: numeric
      FROM
        patrick_sandbox.invoice i
      WHERE
        i.total_amt IS NOT NULL
        /* CREDIT MEMOS */
      UNION ALL
      -- revenue reversal debit
      SELECT
        COALESCE(
          (rl :: json) -> 'SalesItemLineDetail' -> 'ItemAccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.creditmemo cm,
        unnest(cm.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail'
      UNION ALL
      -- shipping reversal debit
      SELECT
        COALESCE(
          (rl :: json) -> 'ShippingLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.creditmemo cm,
        unnest(cm.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'ShippingLineDetail'
      UNION ALL
      -- discounts reversal credit
      SELECT
        COALESCE(
          (rl :: json) -> 'DiscountLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              disc_id
            FROM
              ids
          )
        ) :: text,
        - ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.creditmemo cm,
        unnest(cm.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'DiscountLineDetail'
      UNION ALL
      -- derived sales tax payable debit
      SELECT
        (
          SELECT
            tax_id
          FROM
            ids
        ),
        ROUND(
          (s.total_amt - (s.items - s.discounts + s.shipping)) :: numeric,
          2
        )
      FROM
        cm_sum s
      WHERE
        ABS(s.total_amt - (s.items - s.discounts + s.shipping)) > 0.005
      UNION ALL
      -- AR credit
      SELECT
        '84' :: text,
        - cm.total_amt :: numeric
      FROM
        patrick_sandbox.creditmemo cm
      WHERE
        cm.total_amt IS NOT NULL
        /* SALES RECEIPTS */
      UNION ALL
      -- revenue credit
      SELECT
        COALESCE(
          (rl :: json) -> 'SalesItemLineDetail' -> 'ItemAccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        - ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.salesreceipt sr,
        unnest(sr.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail'
      UNION ALL
      -- shipping credit
      SELECT
        COALESCE(
          (rl :: json) -> 'ShippingLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        - ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.salesreceipt sr,
        unnest(sr.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'ShippingLineDetail'
      UNION ALL
      -- discounts debit
      SELECT
        COALESCE(
          (rl :: json) -> 'DiscountLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              disc_id
            FROM
              ids
          )
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.salesreceipt sr,
        unnest(sr.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'DiscountLineDetail'
      UNION ALL
      -- derived sales tax payable credit
      SELECT
        (
          SELECT
            tax_id
          FROM
            ids
        ),
        - ROUND(
          (s.total_amt - (s.items - s.discounts + s.shipping)) :: numeric,
          2
        )
      FROM
        sr_sum s
      WHERE
        ABS(s.total_amt - (s.items - s.discounts + s.shipping)) > 0.005
      UNION ALL
      -- cash / UF debit
      SELECT
        COALESCE(sr.deposit_to_account_value :: text, '52'),
        sr.total_amt :: numeric
      FROM
        patrick_sandbox.salesreceipt sr
      WHERE
        sr.total_amt IS NOT NULL
        /* REFUND RECEIPTS */
      UNION ALL
      -- revenue reversal debit
      SELECT
        COALESCE(
          (rl :: json) -> 'SalesItemLineDetail' -> 'ItemAccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.refundreceipt rr,
        unnest(rr.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'SalesItemLineDetail'
      UNION ALL
      -- shipping reversal debit
      SELECT
        COALESCE(
          (rl :: json) -> 'ShippingLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              income_id
            FROM
              ids
          )
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.refundreceipt rr,
        unnest(rr.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'ShippingLineDetail'
      UNION ALL
      -- discounts reversal credit
      SELECT
        COALESCE(
          (rl :: json) -> 'DiscountLineDetail' -> 'AccountRef' ->> 'value',
          (
            SELECT
              disc_id
            FROM
              ids
          )
        ) :: text,
        - ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.refundreceipt rr,
        unnest(rr.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'DiscountLineDetail'
      UNION ALL
      -- derived sales tax payable debit
      SELECT
        (
          SELECT
            tax_id
          FROM
            ids
        ),
        ROUND(
          (s.total_amt - (s.items - s.discounts + s.shipping)) :: numeric,
          2
        )
      FROM
        rr_sum s
      WHERE
        ABS(s.total_amt - (s.items - s.discounts + s.shipping)) > 0.005
      UNION ALL
      -- cash credit
      SELECT
        COALESCE(rr.deposit_to_account_value :: text, '35'),
        - rr.total_amt :: numeric
      FROM
        patrick_sandbox.refundreceipt rr
      WHERE
        rr.total_amt IS NOT NULL
        /* PAYMENTS */
      UNION ALL
      -- bank/UF debit
      SELECT
        COALESCE(p.deposit_to_account_value :: text, '52'),
        p.total_amt :: numeric
      FROM
        patrick_sandbox.payment p
      WHERE
        p.total_amt IS NOT NULL
       
   AND p.total_amt <> 0
      UNION ALL
      -- AR credit
      SELECT
        '84' :: text,
        - p.total_amt :: numeric
      FROM
        patrick_sandbox.payment p
      WHERE
        p.total_amt IS NOT NULL
        AND p.total_amt <> 0
        /* BILLS */
      UNION ALL
      -- expense lines debit
      SELECT
        COALESCE(
          (rl :: json) -> 'AccountBasedExpenseLineDetail' -> 'AccountRef' ->> 'value',
          (rl :: json) -> 'ItemBasedExpenseLineDetail' -> 'AccountRef' ->> 'value'
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.bill b,
        unnest(b.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' IN (
          'AccountBasedExpenseLineDetail',
          'ItemBasedExpenseLineDetail'
        )
      UNION ALL
      -- AP credit
      SELECT
        '33' :: text,
        - b.total_amt :: numeric
      FROM
        patrick_sandbox.bill b
      WHERE
        b.total_amt IS NOT NULL
        /* BILL PAYMENTS */
      UNION ALL
      -- AP debit
      SELECT
        '33' :: text,
        bp.total_amt :: numeric
      FROM
        patrick_sandbox.billpayment bp
      WHERE
        bp.total_amt IS NOT NULL
      UNION ALL
      -- cash/cc credit
      SELECT
        CASE
          WHEN bp.pay_type = 'CreditCard' THEN '41'
          WHEN bp.pay_type = 'Check' THEN '35'
          ELSE '35'
        END :: text,
        - bp.total_amt :: numeric
      FROM
        patrick_sandbox.billpayment bp
      WHERE
        bp.total_amt IS NOT NULL
        /* PURCHASES */
      UNION ALL
      -- expense lines debit
      SELECT
        COALESCE(
          (rl :: json) -> 'AccountBasedExpenseLineDetail' -> 'AccountRef' ->> 'value',
          (rl :: json) -> 'ItemBasedExpenseLineDetail' -> 'AccountRef' ->> 'value',
          (rl :: json) -> 'CheckDetail' -> 'AccountRef' ->> 'value'
        ) :: text,
        ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.purchase p,
        unnest(p.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' IN (
          'AccountBasedExpenseLineDetail',
          'ItemBasedExpenseLineDetail',
          'CheckDetail'
        )
      UNION ALL
      -- cash/cc credit
      SELECT
        COALESCE(p.account_value :: text, '35'),
        - p.total_amt :: numeric
      FROM
        patrick_sandbox.purchase p
      WHERE
        p.total_amt IS NOT NULL
        /* DEPOSITS */
      UNION ALL
      -- bank debit (header sum)
      SELECT
        COALESCE(d.deposit_to_account_value :: text, '35'),
        SUM(((rl :: json) ->> 'Amount') :: numeric)
      FROM
        patrick_sandbox.deposit d,
        unnest(d.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'DepositLineDetail'
      GROUP BY
        d.id,
        COALESCE(d.deposit_to_account_value :: text, '35')
      UNION ALL
      -- source lines credit (often Undeposited Funds)
      SELECT
        (rl :: json) -> 'DepositLineDetail' -> 'AccountRef' ->> 'value' :: text,
        - ((rl :: json) ->> 'Amount') :: numeric
      FROM
        patrick_sandbox.deposit d,
        unnest(d.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'DepositLineDetail'
        /* JOURNAL ENTRIES */
      UNION ALL
      SELECT
        (rl :: json) -> 'JournalEntryLineDetail' -> 'AccountRef' ->> 'value' :: text,
        CASE
          WHEN (rl :: json) -> 'JournalEntryLineDetail' ->> 'PostingType' = 'Debit' THEN ((rl :: json) ->> 'Amount') :: numeric
          WHEN (rl :: json) -> 'JournalEntryLineDetail' ->> 'PostingType' = 'Credit' THEN - ((rl :: json) ->> 'Amount') :: numeric
          ELSE 0 :: numeric
        END
      FROM
        patrick_sandbox.journalentry je,
        unnest(je.line) rl
      WHERE
        (rl :: json) ->> 'DetailType' = 'JournalEntryLineDetail'
    ),
    /* ================ NET BY ACCOUNT, ONE-SIDED, NEVER BLANK ================= */
    tb_net AS (
      SELECT
        account_id,
        SUM(amount_signed) AS net_amount
      FROM
        gl
      GROUP BY
        account_id
    ),
    tb_named AS (
      SELECT
        COALESCE(
          a.account_name,
          '[Unmapped ' || COALESCE(n.account_id, 'NULL') || ']'
        ) AS account_name,
        CASE
          WHEN n.net_amount > 0 THEN n.net_amount
          ELSE 0
        END AS debit,
        CASE
          WHEN n.net_amount < 0 THEN - n.net_amount
          ELSE 0
        END AS credit
      FROM
        tb_net n
        LEFT JOIN account_dim a ON a.account_id = n.account_id
      WHERE
        n.net_amount <> 0
    ),
    totals AS (
      SELECT
        'TOTAL' :: text AS account_name,
        SUM(debit) AS debit,
        SUM(credit) AS credit,
        1 AS sort_key
      FROM
        tb_named
    )
    SELECT
      account_name,
      ROUND(debit, 2) AS debit,
      ROUND(credit, 2) AS credit
    FROM
      (
        SELECT
          account_name,
          debit,
          credit,
          0 AS sort_key
        FROM
          tb_named
        UNION ALL
        SELECT
          account_name,
          debit,
          credit,
          sort_key
        FROM
          totals
      ) z
    ORDER BY
      sort_key,
      account_name
  ) AS "source"
LIMIT
  1048575