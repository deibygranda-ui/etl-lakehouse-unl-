
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "db_warehouse"."public_staging"."stg_raw_transactions"
    group by status

)

select *
from all_values
where value_field not in (
    'COMPLETED','PENDING','FAILED'
)


