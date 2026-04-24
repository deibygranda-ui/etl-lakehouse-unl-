select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_category
from "db_warehouse"."public_staging"."stg_raw_transactions"
where product_category is null



      
    ) dbt_internal_test