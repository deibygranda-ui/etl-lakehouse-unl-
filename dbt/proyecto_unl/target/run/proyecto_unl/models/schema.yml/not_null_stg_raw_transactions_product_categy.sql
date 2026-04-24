select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_categy
from "db_warehouse"."public_staging"."stg_raw_transactions"
where product_categy is null



      
    ) dbt_internal_test