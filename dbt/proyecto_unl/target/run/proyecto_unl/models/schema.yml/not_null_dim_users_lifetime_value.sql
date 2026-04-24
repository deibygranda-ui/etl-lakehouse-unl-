select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select lifetime_value
from "db_warehouse"."public_analytics"."dim_users"
where lifetime_value is null



      
    ) dbt_internal_test