
    
    

with all_values as (

    select
        is_churned_user as value_field,
        count(*) as n_records

    from "db_warehouse"."public_analytics"."dim_users"
    group by is_churned_user

)

select *
from all_values
where value_field not in (
    'True','False'
)


