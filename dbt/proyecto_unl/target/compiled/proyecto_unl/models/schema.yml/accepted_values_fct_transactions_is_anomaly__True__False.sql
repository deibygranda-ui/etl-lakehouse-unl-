
    
    

with all_values as (

    select
        is_anomaly as value_field,
        count(*) as n_records

    from "db_warehouse"."public_analytics"."fct_transactions"
    group by is_anomaly

)

select *
from all_values
where value_field not in (
    'True','False'
)


