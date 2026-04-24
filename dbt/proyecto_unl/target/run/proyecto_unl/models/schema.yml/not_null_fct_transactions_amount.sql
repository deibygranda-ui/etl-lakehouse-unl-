select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select amount
from "db_warehouse"."public_analytics"."fct_transactions"
where amount is null



      
    ) dbt_internal_test