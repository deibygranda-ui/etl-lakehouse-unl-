
  create view "db_warehouse"."public_development"."stg_masked_transactions__dbt_tmp"
    
    
  as (
    

SELECT
    transaction_id,
    
    CASE
        WHEN user_id::TEXT IS NULL THEN NULL
        WHEN LENGTH(user_id::TEXT) <= 8 THEN '****'
        ELSE
            CONCAT(
                LEFT(user_id::TEXT, 2),
                '****',
                RIGHT(user_id::TEXT, 4)
            )
    END
 AS user_id_masked,
    product_category,
    amount,
    currency,
    transaction_date,
    status
FROM "db_warehouse"."public_staging"."stg_raw_transactions"
  );