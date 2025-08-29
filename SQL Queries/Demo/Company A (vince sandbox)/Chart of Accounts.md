SELECT
  "source"."account_id" AS "account_id",
  "source"."account_name" AS "account_name",
  "source"."account_type" AS "account_type",
  "source"."account_sub_type" AS "account_sub_type",
  "source"."account_category" AS "account_category",
  "source"."statement_classification" AS "statement_classification",
  "source"."balance" AS "balance"
FROM
  (
    SELECT
      src.account_id,
      src.account_name,
      src.account_type,
      src.account_sub_type,
      src.account_category,
      src.statement_classification,
      CASE
        WHEN src.account_name ILIKE 'Opening Balance Equity%'
       
    OR src.account_sub_type ILIKE '%Opening%Balance%Equity%' THEN - ABS(src.current_balance)
        ELSE ABS(src.current_balance)
      END AS balance
    FROM
      (
        SELECT
          id AS account_id,
          name AS account_name,
          account_type,
          account_sub_type,
          CASE
            WHEN account_type ILIKE '%Bank%'
            OR account_type ILIKE '%Receivable%'
            OR account_type ILIKE '%Other Current Asset%'
            OR account_type ILIKE '%Fixed Asset%'
            OR account_type ILIKE '%Other Asset%' THEN 'Asset'
            WHEN account_type ILIKE '%Payable%'
            OR account_type ILIKE '%Credit Card%'
            OR account_type ILIKE '%Long Term Liability%'
            OR account_type ILIKE '%Other Current Liability%' THEN 'Liability'
            WHEN account_type ILIKE '%Equity%' THEN 'Equity'
            WHEN account_type ILIKE '%Income%'
            OR account_type ILIKE '%Revenue%' THEN 'Income'
            WHEN account_type ILIKE '%Expense%'
            OR account_type ILIKE '%Cost%' THEN 'Expense'
            ELSE 'Other'
          END AS account_category,
          CASE
            WHEN account_type IN (
              'Accounts Receivable',
              'Bank',
              'Other Current Asset',
              'Fixed Asset',
              'Other Asset',
              'Accounts Payable',
              'Credit Card',
              'Long Term Liability',
              'Other Current Liability',
              'Equity'
            ) THEN 'Balance Sheet'
            ELSE 'Income Statement'
          END AS statement_classification,
          current_balance
        FROM
          vince_sandbox.account
      ) AS src
   
LIMIT
      1048575
  ) AS "source"
LIMIT
  1048575