
    
    

select
    user_id as unique_field,
    count(*) as n_records

from "db_warehouse"."public_analytics"."dim_users"
where user_id is not null
group by user_id
having count(*) > 1


