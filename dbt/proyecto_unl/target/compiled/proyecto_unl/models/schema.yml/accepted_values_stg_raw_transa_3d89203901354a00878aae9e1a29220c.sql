
    
    

with all_values as (

    select
        transaction_value_tier as value_field,
        count(*) as n_records

    from "db_warehouse"."public_staging"."stg_raw_transactions"
    group by transaction_value_tier

)

select *
from all_values
where value_field not in (
    'high_value','medium_value','low_value'
)


