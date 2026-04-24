
    
    

select
    transaction_id as unique_field,
    count(*) as n_records

from "db_warehouse"."public_analytics"."fct_transactions"
where transaction_id is not null
group by transaction_id
having count(*) > 1


