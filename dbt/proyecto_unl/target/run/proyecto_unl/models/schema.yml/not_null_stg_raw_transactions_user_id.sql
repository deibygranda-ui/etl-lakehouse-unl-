select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select user_id
from "db_warehouse"."public_staging"."stg_raw_transactions"
where user_id is null



      
    ) dbt_internal_test