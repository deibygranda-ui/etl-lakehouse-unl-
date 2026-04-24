
    
    

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


