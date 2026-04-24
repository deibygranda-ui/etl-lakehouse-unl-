
    
    

with all_values as (

    select
        currency as value_field,
        count(*) as n_records

    from "db_warehouse"."public_staging"."stg_raw_transactions"
    group by currency

)

select *
from all_values
where value_field not in (
    'USD','EUR','GBP'
)


