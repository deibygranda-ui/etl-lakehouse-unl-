select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        data_quality_tier as value_field,
        count(*) as n_records

    from "db_warehouse"."public_staging"."stg_raw_transactions"
    group by data_quality_tier

)

select *
from all_values
where value_field not in (
    'high','medium','low'
)



      
    ) dbt_internal_test